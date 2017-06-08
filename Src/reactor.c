/*
 * reactor.c
 *
 *  Created on: 06/06/2017
 *      Author: kareen
 */

#include "reactor.h"
#include <stdlib.h>

int
timeval_less (const TickType_t a, const TickType_t b)
{
  return (a < b);
}

void
timeval_add (TickType_t* res,
             const TickType_t a, const TickType_t b)
{
  res = a + b;
}

void
timeval_sub (TickType_t* res,
             const TickType_t a, const TickType_t b)
{
  res = a-b;
}


typedef struct reactor_t {
  EventHandler* ehs[10];
  int n_ehs;
} Reactor;

static Reactor r;

void
event_handler_init (EventHandler* eh, int prio, eh_func_t run, fsm_t* fsm)
{
  eh->prio = prio;
  eh->next_activation = xTaskGetTickCount() ;
  eh->run = run;
  eh->fsm = fsm;
}

void
event_handler_run (EventHandler* eh)
{
  eh->run (eh);
}

void
reactor_init (void)
{
  r.n_ehs = 0;
}

int
compare_prio (const void* a, const void* b)
{
  EventHandler* eh1 = *(EventHandler**) a;
  EventHandler* eh2 = *(EventHandler**) b;
  if (eh1->prio > eh2->prio)
    return -1;
  if (eh1->prio < eh2->prio)
    return 1;
  return 0;
}

void
reactor_add_handler (EventHandler* eh)
{
  r.ehs[r.n_ehs++] = eh;
}

static TickType_t*
reactor_next_timeout (void)
{
  static TickType_t next;
  TickType_t now;
  int i;

  if (! r.n_ehs) return NULL;

  now = xTaskGetTickCount();
  next = now + 24*60*60;

  for (i = 0; i < r.n_ehs; ++i) {
    EventHandler* eh = r.ehs[i];
    if (timeval_less (eh->next_activation, next)) {
      next = eh->next_activation;
    }
  }
  if (timeval_less (next, now)) {
    next = now;
  }
  return &next;
}

void
reactor_handle_events (void)
{
  int i;
  TickType_t timeout, now;
  TickType_t* next_activation = reactor_next_timeout();

  now = xTaskGetTickCount();
  timeval_sub (&timeout, next_activation, now);
  HAL_PWR_EnterSLEEPMode(PWR_MAINREGULATOR_ON, PWR_SLEEPENTRY_WFE); //TOCAR AQUI
  vTaskDelayUntil(now, timeout);

  now = xTaskGetTickCount();
  for (i = 0; i < r.n_ehs; ++i) {
    EventHandler* eh = r.ehs[i];
    if (timeval_less (eh->next_activation, now)) {
      event_handler_run (eh);
    }
  }
}
