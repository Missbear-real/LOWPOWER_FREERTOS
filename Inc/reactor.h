/*
 * reactor.h
 *
 *  Created on: 06/06/2017
 *      Author: kareen
 */

#ifndef REACTOR_H
#define REACTOR_H

#include "fsm.h"
#include "cmsis_os.h"
#include "stm32f0xx.h"

int timeval_less (const TickType_t a, const TickType_t b);
void timeval_add (TickType_t* res,
                  const TickType_t a, const TickType_t b);
void timeval_sub (TickType_t* res,
                  const TickType_t a, const TickType_t b);


struct event_handler_t;
typedef void (*eh_func_t) (struct event_handler_t*);

struct event_handler_t {
  int prio;
  TickType_t next_activation;
  eh_func_t run;
  fsm_t* fsm;
};
typedef struct event_handler_t EventHandler;

void event_handler_init (EventHandler* eh, int prio, eh_func_t run, fsm_t* fsm);
void event_handler_run (EventHandler* eh);

void reactor_init (void);
void reactor_add_handler (EventHandler* eh);
void reactor_handle_events (void);

#endif
