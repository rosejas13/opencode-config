---
description: Show OpenCode Go usage vs account limits
---

I need to show the user their Go plan usage vs limits. Run these two commands and present the data:

```
opencode stats --days 30
opencode stats --days 7
```

Then present a table comparing against Go plan limits. The plan caps are:

| Limit | Cap |
|-------|-----|
| Rolling (5-hour window) | $12.00 |
| Weekly | $30.00 |
| Monthly | $60.00 |

Use the 7-day cost as a proxy for Weekly and 30-day cost for Monthly. Note that the precise Rolling window (5-hour) and exact reset times are only available at https://opencode.ai/auth. Remind them they can also enable "Use balance" to fall back to Zen credits once Go limits are hit.
