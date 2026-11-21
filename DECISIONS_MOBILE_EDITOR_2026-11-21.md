# Owner instructions — 2026-11-21

**Status:** owner-approved product direction; implementation pending lead developer coordination.

- Built-in scenario editor: simple quests and uncomplicated stories, accessible to ordinary users with no programming expertise.
- Primary use: author a quest on a phone while physically in the field.
- Also support quick edits to existing scenarios during live gameplay when a PC is unavailable.
- Node-RED: advanced scenario design and teaching workflow; do not require it for the simple mobile workflow.
- During design/development, no backward compatibility guarantee for old scenario formats; old test scenarios can be deleted. Runtime behaviour for live edits still needs an explicit safety contract.

## Open engineering questions
- scenario schema and delivery path to runtime
- validation, errors and authoring constraints
- synthetic lab with simulated GPS/time/player events
- hot-edit publishing semantics and existing player progress
- format versioning and deliberate cleanup during development

Corporate letter: `dev-hub/messages/20261121-1058-quest-game-scenarios-to-quest-game-scenario-editor-coordination.md`.
