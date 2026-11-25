# Palette UI maintenance — 2026-11-25

Owner approved scenario department work on the visual editor. Coordination with lead developer is pending; this is not an agreed upstream handover.

## Scope
Dropdowns, tooltips, labels, grouping, layout and editor usability only. Preserve node types, property names, value types, defaults, ports, wiring, export semantics, JSON v2 and runtime behavior. No changes to main repository, engine, converter, Firebase or validation contract without agreement.

## Workflow
Pin upstream version and commit; agree source distribution and licensing before copying into public repository. Keep UI changes separately reviewable, with changelog, installation and rollback instructions. Compare exported scenarios before/after for semantic equality; test import and laboratory. Notify lead developer of releases. Rebase against upstream updates; do not overwrite installed palette blindly.

## First iteration
qg task: dropdown for need (all/any/integer counts), preserving existing serialization and existing values; tooltips for checks, attempts and geofence fields after verifying semantics. No runtime changes. Baseline: GPS Test 1 manually completed in laboratory; negative and realistic GPS tests pending.

Status: owner approved scope; upstream coordination and implementation pending.
