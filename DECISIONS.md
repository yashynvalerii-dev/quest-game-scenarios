# Decision register

## D-001 — Public/private separation
**Status:** working organization decision, based on owner's two created repositories; further policy refinements require approval.
**Date:** 2026-11-21
**Problem:** make scenario memory cross-chat and cross-assistant while protecting spoiler and unpublished material.
**Alternatives:** all-public; all-private; split.
**Selected baseline:** public shared mechanics/docs and private spoiler-sensitive material.
**Consequences:** cross-repo references need stable IDs; public files must never copy confidential contents.
**Validation:** repository metadata confirms public/private visibility and write permissions.
**Rollback:** consolidate via explicit owner decision; do not change visibility automatically.

## D-002 — Node-RED as scenario-authoring environment
**Status:** prototype validated, runtime contract NOT approved.
**Evidence:** Worldmap GeoJSON polygons for Broker buildings, selection via HTTP link, `quest.map.objectSelected` and `quest.task.activate` visible in Node-RED Debug.
**Open:** engine compatibility, GPS logic, safe validation/export, UI integration with map.
**Note:** Node-RED flow JSON is not itself an independently executable Quest Game game package.
