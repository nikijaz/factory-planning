set P; # Set of products
set M; # Set of machines
set T := 1..6; # Set of time periods

param m {M} >= 0; # Number of machines of type j available
param u {M, T} >= 0; # Number of machines of type j unavailable due to maintenance at time period k
param p {P} >= 0; # Profit from selling product i
param t {P, M} >= 0; # Production time of product i on machine j
param d {P, T} >= 0; # Demand for product i at time period k
param f := 0.5; # Fixed cost for holding a unit of stock
param c := 100; # Stock capacity for each product
param r := 50; # Final required stock for each product
param h := 24 * 8 * 2; # Total hours available in each time period

var x {P, T} >= 0; # Production volume of a product i at time period k
var y {P, T} >= 0; # Sales volume of a product i at time period k
var z {P, T} >= 0; # Stock volume of a product i at time period k

# Maximize total profit
maximize Total_Profit:
    sum {i in P, k in T} (p[i] * y[i, k] - f * z[i, k]);

# Time spent on production must not exceed the available time
subject to Machine_Availability {j in M, k in T}:
    sum {i in P} t[i, j] * x[i, k] <= h * (m[j] - u[j, k]);

# Sales must not exceed demand
subject to Demand {i in P, k in T}:
    y[i, k] <= d[i, k];

# Volume available for sales must be equal to the sum of sales and stock
subject to Stock {i in P, k in T}:
    x[i, k] + (if k = 1 then 0 else z[i, k - 1]) = y[i, k] + z[i, k];

# Stock must not exceed its capacity
subject to Stock_Capacity {i in P, k in T}:
    z[i, k] <= c;

# Final stock must be equal to required final stock
subject to Final_Stock {i in P}:
    z[i, card(T)] = r;
