# ADR 0001: Adopt trunk-based development + Cursor guardrails

## Status
Accepted (2025-09-07)

## Context
Solo/small-team iOS projects can collapse under ad-hoc branching and unbounded AI edits.
We need a lightweight, repeatable way to ship quickly without losing structure.

## Decision
- Use trunk-based development:
  - Branches: short-lived `feat/*`, `fix/*`, `chore/*`
  - Always land via PR to `main`
  - Conventional Commits for readable history
- Protect structure with `.cursor/rules` so AI tools (Cursor/Claude/ChatGPT) stay within guardrails.
- Enforce hygiene:
  - SwiftFormat + SwiftLint locally
  - GitHub Actions CI builds & tests every PR
  - PR template to require tests + screenshots
- App architecture: MVVM-lite (Views → ViewModels → Models) with Swift Concurrency.

## Consequences
- Small PRs with tests by default.
- Faster reviews and safer refactors.
- Reproducible pipeline for future apps.

## Alternatives considered
- Long-lived GitFlow branches: higher coordination cost, slower feedback.
- No AI guardrails: leads to large, cross-cutting diffs and drift.

## Follow-ups
- Add Fastlane for TestFlight later.
- Add Danger to enforce PR checklist.
