
library(deSolve)

run_logistic = function(r=0.1, K=1000, p0=100, tmax=100, nt=51) {
    # simulate a logistic model

    # arguments:
    # r: low density growth rate
    # K: carrying capacity
    # p0: initial condition for population
    # tmax: maximum time for simulation
    # nt: number of time points to calculate solution

    # all arguments have default values and so are optional.

    # For example, to simulate with default arguments
    # run_logistic()
    
    # For example, to run and specify logistic paramters and initial conditions
    # run_logistic(p0=500, r=0.05, K=10000)
    # To run same simulation but for longer time
    # run_logistic(p0=500, r=0.05, K=10000, tmax=200)

  
    # The function returns a matrix of the calculated population size
    # at the specified times (nt points from t=0 until t=tmax).
    # To save the results (and keep them from displaying each time)
    # run the program as, for example,
    # results = run_logistic(r=0.1, K=1000, p0=2000)
    # Then, can plot the results with the command
    # plot(results)
    # You can examine the results at the 10th time point with
    # results[10,]
    # and access just the value of the time as
    # results[10,"time"]
    # or the population size as
    # results[10,"p"]


    # function defining the right hand side of the differential equation
    # dp/dt = r*p(1-p/K)
    logistic_f = function(t, p, parms) {
      # params contains r and K.  Extract via their names.
      r = parms["r"]
      K = parms["K"]
      
      dp = r*p*(1-p/K)

      # must output results as a list
      list(dp)
    }

    # define the parameters from the values used in the argument of run_logistic
    parms = c(r=r, K=K)
    
    # initial conditions
    initial = c(p = p0)

    # times where we want to calculate the solution:
    # a total of nt points evenly spaced from t=0 to t=tmax
    times = seq(0, tmax, length = nt)

    # run the simulation and return the results as the output
    ode(y=initial, times=times, func=logistic_f, parms=parms)
    
}
