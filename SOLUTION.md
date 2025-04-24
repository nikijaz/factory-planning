# Solution

## Sets

- $P$ - set of products,
- $M$ - set of machines,
- $T = 1, ..., n$ - set of time periods.

## Parameters

- $m_j$ - number of machines of type $j$ available,
- $u_{jk}$ - number of machines of type $j$ unavailable due to maintenance at time period $k$,
- $p_i$ - profit from selling product $i$,
- $t_{ij}$ - production time of product $i$ on machine $j$,
- $d_{ik}$ - demand for product $i$ at time period $k$,
- $f$ - fixed cost for holding a unit of stock,
- $c$ - stock capacity for each product,
- $r$ - final required stock for each product,
- $h$ - total hours available in each time period.

## Decision Variables

- $x_{ik}$ - production volume of product $i$ at time period $k$,
- $y_{ik}$ - sales volume of product $i$ at time period $k$,
- $z_{ik}$ - stock volume of product $i$ at time period $k$.

## Objective Function

- Maximize total profit:

$$\sum_{i \in P} \sum_{k \in T} (p_i y_{ik} - f z_{ik})$$

## Constraints

- Time spent on production must not exceed the available time:

$$\sum_{i \in P} t_{ij} x_{ik} \leq h \cdot (m_j - u_{jk}), \quad j \in M, \quad k \in T$$

- Sales must not exceed demand:

$$y_{ik} \leq d_{ik}, \quad i \in P, \quad k \in T$$

- Volume available for sales must be equal to the sum of sales and stock:

$$x_{ik} + z_{i,k-1} = y_{ik} + z_{ik}, \quad i \in P, \quad k \in T$$

- Stock must not exceed its capacity:

$$z_{ik} \leq c, \quad i \in P, \quad k \in T$$

- Final stock must be equal to required final stock:

$$z_{in} = r, \quad i \in P$$

- Force non-negative values:

$$x_{ik}, y_{ik}, z_{ik} \geq 0, \quad i \in P, \quad k \in T$$
