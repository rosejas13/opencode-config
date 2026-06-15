#!/bin/bash
set -e

COST=$(opencode stats --days 30 2>&1 | grep "Total Cost" | awk '{print $3}')

cat << EOF

## OpenCode Go Limits Dashboard

### Usage (last 30 days)
EOF

opencode stats --days 30 2>&1

cat << EOF

### Plan Limits vs Usage
| Limit | Cap | Used | Remaining |
|-------|-----|------|-----------|
| **5-hour window** | \$12.00 | \$$COST | \$(echo "12 - $COST" | bc -l 2>/dev/null || echo "N/A") |
| **Weekly** | \$30.00 | \$$COST | \$(echo "30 - $COST" | bc -l 2>/dev/null || echo "N/A") |
| **Monthly** | \$60.00 | \$$COST | \$(echo "60 - $COST" | bc -l 2>/dev/null || echo "N/A") |

To see precise billing and renewal dates, visit https://opencode.ai/auth
EOF
