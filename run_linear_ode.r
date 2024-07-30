
library(deSolve)

run_linear_ode = function(r=0.1, p0=100, tmax=100, nt=51) {
    # simulate a linear ODE (ordinary differential equation)
    # that models growth/decay:
    # dp/dt = r*p
  
    # arguments:
    # r: net growth rate
    # p0: initial condition for population
    # tmax: maximum time for simulation
    # nt: number of time points to calculate solution

    # all arguments have default values and so are optional.

    # For example, to simulate with default arguments
    # run_linear_ode()
    
    # Since solution to ODE is p(t) = p0*e^(r*t),
    # solving the ODE numerically this way is unnecessary.
    # This is just an example of how to use R to solve an ODE.
  
    # For example, to run and specify parameters and initial conditions
    # run_linear_ode(p0=500, r=0.05)
    # To run same simulation but for longer time
    # run_linear_ode(p0=500, r=0.05, tmax=200)

  
    # The function returns a matrix of the calculated population size
    # at the specified times (nt points from t=0 until t=tmax).
    # To save the results (and keep them from displaying each time)
    # run the program as, for example,
    # results = run_linear_ode(r=0.1, K=1000)
    # Then, can plot the results with the command
    # plot(results)
    # You can examine the results at the 10th time point with
    # results[10,]
    # and access just the value of the time as
    # results[10,"time"]
    # or the population size as
    # results[10,"p"]


    # function defining the right hand side of the differential equation
    # dp/dt = r*p
    linear_f = function(t, p, r) {
      dp = r*p
      
      # must output results as a list
      list(dp)
    }
    
    # times where we want to calculate the solution:
    # a total of nt points evenly spaced from t=0 to t=tmax
    times = seq(0, tmax, length = nt)

    # create initial condition as a vector
    # with a named component so that plotting the output
    # will label graph with p
    initial = c(p=p0)
    
    # run the simulation and return the results as the output
    ode(y=initial, times=times, func=linear_f, parms=r)
    
}
