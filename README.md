# Factory Planning

Solution for the Factory Planning problem using a linear programming model written in **MathProg**. The model optimizes
production and sales decisions for a factory, considering constraints such as machine availability, production time,
product demand, and stock levels.

## Files

- [PROBLEM.md](PROBLEM.md): Text of the problem statement.
- [SOLUTION.md](SOLUTION.md): Verbal description of the solution.

## Usage

0. Ensure [GLPK](https://en.wikipedia.org/wiki/GNU_Linear_Programming_Kit) is installed.

1. Clone and navigate to the repository:

    ```shell
    git clone https://github.com/nikijaz/factory-planning.git
    cd factory-planning/
    ```

2. Run the model:

    ```shell
    glpsol -m model.mod -d data.dat -o output.txt
    ```
