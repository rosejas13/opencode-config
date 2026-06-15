# Skill & Plugin Catalog

This config relies on three external skill packages and one local plugin. Each is installed independently — the config wires them together.

## agent-skills (44 skills)

**Source:** [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) (git)  
**Install:** `git clone https://github.com/addyosmani/agent-skills ~/.config/opencode/agent-skills`

| Skill | Purpose |
|---|---|
| `a11y-audit` | WCAG 2.2 AA accessibility audit |
| `api-and-interface-design` | REST/GraphQL API design workflow |
| `browser-testing-with-devtools` | Chrome DevTools-driven browser testing |
| `caveman` | Ultra-compressed communication mode |
| `ci-cd-and-automation` | CI/CD pipeline setup |
| `code-council` | 7-agent multi-perspective code review |
| `code-review-and-quality` | Multi-axis code review |
| `code-simplification` | Refactoring for clarity |
| `context-engineering` | Agent context optimization |
| `cross-browser-uniformity` | Cross-browser consistency checks |
| `data-modeling-and-schema` | Database schema design |
| `database-migrations` | Safe migration patterns |
| `debugging-and-error-recovery` | Systematic root-cause debugging |
| `deprecation-and-migration` | API/feature deprecation management |
| `deslopify` | AI slop pattern removal |
| `documentation-and-adrs` | Architecture decision records |
| `doubt-driven-development` | Adversarial pre-implementation review |
| `error-handling-architecture` | Typed error hierarchy design |
| `frontend-ui-engineering` | Production-quality UI build |
| `full-audit` | 12-dimension project audit |
| `git-workflow-and-versioning` | Git workflow practices |
| `grill-with-docs` | Domain-model plan stress-test |
| `handoff` | Session handoff document |
| `humanizer` | AI-to-human text conversion |
| `idea-refine` | Divergent/convergent idea refinement |
| `improve-codebase-architecture` | Module deepening refactors |
| `incident-response` | On-call and postmortem setup |
| `incremental-implementation` | Multi-file incremental delivery |
| `interview-me` | Requirements extraction via interview |
| `obsidian-import` | Document import pipeline |
| `performance-optimization` | Core Web Vitals optimization |
| `plan-council` | 4-agent plan stress-test |
| `planning-and-task-breakdown` | Ordered task breakdown |
| `prototype` | Throwaway prototype builds |
| `retrospective` | End-of-session lesson capture |
| `security-and-hardening` | Vulnerability hardening |
| `shipping-and-launch` | Production launch checklist |
| `source-driven-development` | Official-docs-grounded implementation |
| `spec-driven-development` | Pre-coding specification |
| `test-driven-development` | Test-first development |
| `to-issues` | Vertical-slice issue breakdown |
| `to-prd` | PRD generation from context |
| `triage` | Issue state-machine triage |
| `using-agent-skills` | Meta-skill: skill discovery and invocation |

## gstack (52 skills)

**Source:** [garrytan/gstack](https://github.com/garrytan/gstack) (git)  
**Install:** `git clone https://github.com/garrytan/gstack ~/.config/opencode/gstack`

| Skill | Purpose |
|---|---|
| `gstack` | Headless browser QA |
| `gstack-autoplan` | Automated plan review pipeline |
| `gstack-benchmark` | Performance regression detection |
| `gstack-benchmark-models` | Cross-model latency/cost comparison |
| `gstack-browse` | Fast headless browser |
| `gstack-canary` | Post-deploy monitoring |
| `gstack-careful` | Destructive command guardrails |
| `gstack-claude` | Claude Code CLI wrapper |
| `gstack-context-restore` | Session context restoration |
| `gstack-context-save` | Session state checkpointing |
| `gstack-cso` | Chief Security Officer audit |
| `gstack-design-consultation` | Design system generation |
| `gstack-design-html` | Production HTML/CSS generation |
| `gstack-design-review` | Live visual QA with fixes |
| `gstack-design-shotgun` | Multi-variant design exploration |
| `gstack-devex-review` | Live developer experience audit |
| `gstack-document-generate` | Diataxis-framework documentation |
| `gstack-document-release` | Post-ship doc sync |
| `gstack-freeze` | Directory-scoped edit restriction |
| `gstack-guard` | Full safety mode (careful + freeze) |
| `gstack-health` | Code quality dashboard |
| `gstack-investigate` | Systematic 4-phase debugging |
| `gstack-ios-clean` | Debug bridge removal |
| `gstack-ios-design-review` | iOS visual design audit |
| `gstack-ios-fix` | Autonomous bug fixer |
| `gstack-ios-qa` | Live-device iOS QA |
| `gstack-ios-sync` | Debug bridge regeneration |
| `gstack-land-and-deploy` | Merge + deploy + canary |
| `gstack-landing-report` | Queue dashboard |
| `gstack-learn` | Cross-session learning management |
| `gstack-make-pdf` | Markdown-to-PDF publication |
| `gstack-office-hours` | YC-style idea validation |
| `gstack-open-gstack-browser` | Visible browser launcher |
| `gstack-pair-agent` | Remote agent browser pairing |
| `gstack-plan-ceo-review` | CEO-mode scope/strategy review |
| `gstack-plan-design-review` | Designer's eye plan critique |
| `gstack-plan-devex-review` | Developer experience plan review |
| `gstack-plan-eng-review` | Engineering plan review |
| `gstack-plan-tune` | Question sensitivity tuning |
| `gstack-qa` | Test + fix + verify loop |
| `gstack-qa-only` | Report-only QA |
| `gstack-retro` | Weekly engineering retrospective |
| `gstack-review` | Pre-landing PR review |
| `gstack-scrape` | Structured data extraction |
| `gstack-setup-browser-cookies` | Cookie import from Chromium |
| `gstack-setup-deploy` | Deployment configuration |
| `gstack-setup-gbrain` | gbrain CLI + PGLite setup |
| `gstack-ship` | PR creation and version bump |
| `gstack-skillify` | Scrape flow codification |
| `gstack-sync-gbrain` | Codebase reindexing |
| `gstack-unfreeze` | Freeze boundary removal |
| `gstack-upgrade` | Self-upgrade tool |

## impeccable (1 skill)

**Source:** [pbakaus/impeccable](https://github.com/pbakaus/impeccable) (git)  
**Install:** `git clone https://github.com/pbakaus/impeccable ~/.config/opencode/impeccable`

| Skill | Purpose |
|---|---|
| `impeccable` | Frontend design polish, critique, and iteration |

## Local plugins

| Plugin | Source | Purpose |
|---|---|---|
| `enum-sanitizer.js` | Local (`plugins/`) | Sanitizes enum values in API requests |
