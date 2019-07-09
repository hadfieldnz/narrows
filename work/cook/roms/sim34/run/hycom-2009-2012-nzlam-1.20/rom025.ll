#! /bin/bash
#@ job_name         = ocean
#@ output           = rom025.log
#@ error            = rom025.err
#@ job_type         = parallel
#@ network.MPI      = sn_all,,US
#@ class            = General
#@ account_no       = COBR1404
#@ total_tasks      = 64
#@ task_affinity    = cpu(1)
#@ node             = 1
#@ notification     = never
#@ wall_clock_limit = 09:00:00
#@ node_usage       = not_shared
#@ queue

export MP_TIMEOUT=300
date
poe ./ocean rom025.in
date
