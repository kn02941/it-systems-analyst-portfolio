# IT Systems Analyst Portfolio

## Software Deployment Performance Analysis

Analyzed software deployment pipeline data to identify efficiency patterns, 
platform coverage trends, and change type distribution.

**Tools Used:** SQL (SQLite/DBeaver), Tableau (coming soon)

**Key Findings:**
- 59% of total deployment time is idle, indicating pipeline bottlenecks
- iOS and Android account for over 40% of all platform deployments
- Deployments covering 8 platforms take more than double the time of single platform releases
- 78 deployments required all three change types simultaneously

**Files:**
- `queries.sql` — All 8 business queries
- `query1_monthly_deployments.csv` — Monthly deployment volume
- `query2_idle_time.csv` — Active vs idle time breakdown
- `query3_platform_coverage.csv` — Platform distribution
- `query4_complex_deployments.csv` — Most complex deployments
- `query5_change_types.csv` — Change type breakdown
- `query6_longest_deployments.csv` — Longest running deployments
- `query7_platform_vs_duration.csv` — Platform count vs duration
- `query8_high_complexity.csv` — Triple change type deployments
