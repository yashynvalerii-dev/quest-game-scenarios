# Contract drafts — not yet agreed with lead developer

Proposed authoring pipeline:
`GameGIS Broker dataset → map overlays → Node-RED game-specific nodes/flows → validated export → Quest Game runtime`.

Prototype events:
- `quest.map.objectSelected`: editor interaction; object ref such as `way/34294737`.
- `quest.task.activate`: proof-of-concept output from Node-RED; not confirmed by runtime.

Contract topics to agree:
- stable refs for Broker objects and custom zones, geometry snapshot, provenance;
- editor-only events versus runtime GPS events;
- node registry, input validation, game state, condition/action semantics;
- sequencing, multiplayer, offline behaviour, version compatibility;
- package schema, licensing, fallback when geometry is unavailable.

Do not advertise draft contract as implemented.
