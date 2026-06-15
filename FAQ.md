# FAQ

## Why not just use the default opencode config?

The default config works out of the box, but it doesn't answer three questions I care about: is the AI safe to run on my machine, can it work offline, and does it remember what we've learned? This config adds a permission layer, local model fallbacks, and persistent memory — three things that matter for daily use but aren't in the defaults.

## Why Ollama instead of OpenAI/Claude?

I use cloud models as the default. Ollama is a fallback — it costs nothing and works without internet. The 80% of tasks (editing files, reviewing diffs, running commands) don't need a frontier model. The remaining 20% (complex reasoning, architecture design) use the cloud default.

## What's with the Obsidian integration?

A personal knowledge base lets the AI retrieve past decisions, project context, and architecture notes without me re-explaining them every session. It's the same concept as an RAG system, just for a single developer's brain.

## Why custom agent definitions?

The built-in subagents work, but specialized prompts with scoped permissions let me trust the agents more. The code reviewer can read files but can't edit them. The debug investigator can run bash commands but can't make changes. Each agent gets the minimum tool access it needs.

## Is this config public so others can copy it?

Yes. It's also a portfolio piece — it demonstrates systems thinking about AI tooling. If you find it useful, fork it and make it your own.

## How do I update this when opencode changes?

Opencode uses semantic versioning. Run `opencode update` to see what changed. Breaking changes to the JSONC schema are rare; when they happen, this repo will be updated within a week.
