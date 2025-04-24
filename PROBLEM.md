# Problem

An engineering factory manufactures seven products (**PROD 1** to **PROD 7**) using the following machinery:

- 4 grinders
- 2 vertical drills
- 3 horizontal drills
- 1 borer
- 1 planer

Each product contributes a specific profit, calculated as the **selling price per unit (£) minus the cost of raw
materials**. Additionally, the table below outlines the **production time (hours) per unit** required for each process.
A dash (-) indicates that a product does not undergo a particular process.

|                        | PROD 1 | PROD 2 | PROD 3 | PROD 4 | PROD 5 | PROD 6 | PROD 7 |
| ---------------------- | :----: | :----: | :----: | :----: | :----: | :----: | :----: |
| Contribution to profit |   10   |   6    |   8    |   4    |   11   |   9    |   3    |
| Grinding               |  0.5   |  0.7   |   -    |   -    |  0.3   |  0.2   |  0.5   |
| Vertical drilling      |  0.1   |  0.2   |   -    |  0.3   |   -    |  0.6   |   -    |
| Horizontal drilling    |  0.2   |   -    |  0.8   |   -    |   -    |   -    |  0.6   |
| Boring                 |  0.05  |  0.03  |   -    |  0.07  |  0.1   |   -    |  0.08  |
| Planing                |   -    |   -    |  0.01  |   -    |  0.05  |   -    |  0.05  |

The following machines will be **unavailable** due to scheduled maintenance over the next six months:

- January: 1 Grinder
- February: 2 Horizontal drills
- March: 1 Borer
- April: 1 Vertical drill
- May: 1 Grinder and 1 Vertical drill
- June: 1 Planer and 1 Horizontal drill

Each product has **monthly production caps** due to market demand constraints. Below is the table outlining these
limits:

|          | PROD 1 | PROD 2 | PROD 3 | PROD 4 | PROD 5 | PROD 6 | PROD 7 |
| -------- | :----: | :----: | :----: | :----: | :----: | :----: | :----: |
| January  |  500   |  1000  |  300   |  300   |  800   |  200   |  100   |
| February |  600   |  500   |  200   |   0    |  400   |  300   |  150   |
| March    |  300   |  600   |   0    |   0    |  500   |  400   |  100   |
| April    |  200   |  300   |  400   |  500   |  200   |   0    |  100   |
| May      |   0    |  100   |  500   |  100   |  1000  |  300   |   0    |
| June     |  500   |  500   |  100   |  300   |  1100  |  500   |   60   |

The factory can store up to **100 of each product** at any time at a cost of **£0.5 per unit per month**. There are no
stocks at present, but the goal is to have **50 units of each product** in stock by the end of June.

The factory operates **6 days a week** with **two 8-hour shifts per day**. No sequencing issues need to be considered
(machines can run independently). When and what should the factory make in order to maximise the total profit?

**N.B.** It may be assumed that each month consists of only 24 working days.

> Adapted from: Williams, H. P. (2013). *Model Building in Mathematical Programming* (5th ed.)
