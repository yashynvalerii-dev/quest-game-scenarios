# Test evidence and acceptance criteria

Never label a capability 'implemented' based solely on an anticipated output.

Known evidence (screenshots shared 2026-11-21):
- Map Test 01: point click → `quest.map.pointSelected`.
- Map Test 02: Broker polygons appear as overlays; popup includes ID/properties.
- Map Test 03: explicit HTTP selection by ID → `quest.map.objectSelected`.
- Map Test 04: Switch recognized `way/34294737`, emitted `quest.task.activate` to Debug.

Known limitations:
- Map overlays can disappear after page reload until re-sent.
- Plain polygon click did not demonstrate native object selection event.
- GPS geofence, Node-RED→Quest Game export and Quest Game execution not tested.
