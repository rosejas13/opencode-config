# opencode config

Production-grade configuration for [opencode](https://opencode.ai), a terminal-native AI coding agent. This repo structures how an AI assistant interacts with your codebase, tools, and data — with security-conscious defaults and multiple model providers.

## Highlights

- **Custom permission system** — allow-list for bash commands with catch-all `ask` for unknown operations. Read/write/edit always allowed; destructive ops require confirmation.
- **Multi-model provider setup** — default `deepseek-v4-flash-free` with seven local Ollama models as fallback (Qwen 3.5, DeepSeek R1, Gemma 4, Phi 4).
- **MCP server topology** — three Model Context Protocol servers wired for code search (gh_grep), personal knowledge retrieval (Obsidian Brain), and cross-session memory.
- **Custom subagents** — specialized agents for code review, security auditing, and debugging, each with scoped permissions.
- **Context management** — auto-compaction with 20-turn tail preservation and 10K token reserve.

## Prerequisites

| Dependency | Purpose |
|---|---|
| [opencode](https://opencode.ai) | The AI coding agent |
| [agent-skills](https://github.com/anomalyco/opencode-agent-skills) | Skill workflows (plan-council, full-audit, etc.) |
| [impeccable](https://github.com/anomalyco/opencode-impeccable) | Frontend design skill |
| [gstack](https://github.com/anomalyco/opencode-gstack) | Browser QA, iOS testing, deploy workflows |
| [obsidian-brain](https://github.com/anomalyco/obsidian-brain) | MCP server for personal knowledge graph |
| Ollama (optional) | Local model inference |

## Getting started

```bash
# Install opencode
npm install -g opencode

# Clone this config
git clone https://github.com/rosejas/opencode-config ~/.config/opencode

# Install dependencies
cd ~/.config/opencode
npm install

# Verify
opencode
```

Customize `opencode.jsonc` paths to match your environment — specifically the `VAULT_PATH` and `MEMORY_FILE_PATH` in the MCP server configs.

## Design decisions

**Why a custom permission system?**  
Opencode's default grants the AI broad bash access. The allow-list approach explicitly permits common tools (git, npm, docker, gh) while routing unknown commands through a confirmation gate. `git stash` gets extra friction because it can silently destroy work.

**Why Ollama fallbacks?**  
Cloud models are fast and capable, but they cost money and require internet. Local models (Qwen 3.5, Phi 4) handle the 80% case — code review, simple refactors, file edits — at zero cost. The config keeps them disabled by default and toggles them on when the cloud is unavailable.

**Why three MCP servers?**  
Each serves a distinct need: `gh_grep` finds real-world code examples across GitHub, `obsidian_brain` retrieves personal project context from a connected note vault, and `memory` persists learning across sessions. Separating them avoids coupling retrieval strategies.

## Structure

```
~/.config/opencode/
  opencode.jsonc    # Main configuration
  agents/           # Custom subagent definitions
    code-reviewer.md
    security-auditor.md
    debug-investigator.md
  commands/         # Custom shell commands
    limits.md
    limits.sh
```

## Catalog

See [CATALOG.md](CATALOG.md) for a full inventory of all 97 skills across the three dependency packages (agent-skills, gstack, impeccable) plus local plugins.

## Related

- [Portfolio](https://nova-mir.vercel.app) — main portfolio showcasing shipped projects
