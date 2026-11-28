# Quest Game — Scenario Department

Public documentation and reusable scenario mechanics for Quest Game.

## Mission
The scenario department turns the owner's ideas into well-defined game scenarios and Node-RED flows, tests for contradictions and exploits, and teaches the owner visual programming.

## Responsibilities
- Owner: sets creative direction and approves decisions.
- Scenario department (ChatGPT): narrative design, mechanics, constructive criticism, Node-RED learning material, scenario contracts.
- Lead developer (Claude): main Quest Game runtime and integration; coordination is pending and must not be described as agreed.
- GameGIS Broker: geographical dataset; source geometries and identities belong to the geographical layer.

## Source of truth
Read `PROJECT_STATE.json`, `DECISIONS.md`, `NEW_CHAT_START.md`, and latest commits at the start of each session. GitHub committed files take priority over chat history. Mark tentative decisions as proposals. Never treat drafts as approved.

## Privacy boundary
This repository is PUBLIC. Do not include spoilers, unreleased answers, personal information, tokens, private addresses, or secret scenario mechanics. Keep these in the private sibling repository.

Private companion: `yashynvalerii-dev/quest-game-scenarios-private` (access required).

## Current engineering prototype
- Node-RED 5.0.10 on Windows; worldmap extension 5.9.2.
- Broker geometries rendered on Worldmap; example selected ID `way/34294737`.
- Experimental HTTP object-selection emits `quest.map.objectSelected`; Node-RED Switch test emits `quest.task.activate`.
- These are prototype event names, NOT an approved Quest Game runtime contract.
- Only a proof of event processing exists; live GPS geofencing and export/runtime support are NOT verified.

## Index
- `PROJECT_STATE.json`: live project state
- `ENGINE_REQUIREMENTS.md`: central index for Node-RED/engine compatibility questions, reproducible laboratory findings and requests to the lead developer
- `NEW_CHAT_START.md`: succession instructions
- `DECISIONS.md`: design decision register
- `CONTRACTS/README.md`: proposals for game-data contracts
- `NODE_RED/README.md`: learning and prototype notes
- `SCENARIOS/README.md`: public reusable scenarios
- `TESTS/README.md`: empirical outcomes, not claims

## Operating protocol
1. Capture user's idea verbatim in a draft.
2. Review for logic, player experience, safety, feasibility, and conflicts.
3. Draft state diagram and Node-RED nodes/events.
4. Explicitly distinguish proposed, tested and approved.
5. Have owner approve key decisions.
6. Coordinate required contracts with lead developer when available.
7. Update documentation, project state and succession note after work.
8. Avoid modifying other projects without explicit permission.

License: not selected. Public visibility does not itself grant reuse rights.

## Document-first communication (2026-11-28)

A cross-project recommendation from STALKER GPS proposes a stable registry of technical needs linked to owner decisions, implementation evidence, acceptance tests and changelogs, with short dev-hub summary messages. We adopt the lightweight **index principle**, not the other team's document structure or its gameplay requirements. Our existing `DECISIONS.md`, `TESTS/README.md` and project state remain canonical for their respective purposes. Reference: [corporate message](https://github.com/yashynvalerii-dev/dev-hub/blob/main/messages/20261128-1206-stalker-gps-scenarios-to-quest-game-scenarios-document-first-workflow.md).
