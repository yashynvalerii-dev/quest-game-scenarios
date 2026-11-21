# Node-RED teaching and prototypes

Confirmed local environment: Node-RED 5.0.10, `node-red-contrib-web-worldmap` 5.9.2, Windows, localhost:1880.
Evidence from user screenshots:
- Worldmap `worldmap in` produced click coordinates.
- An `function` node normalized click to `quest.map.pointSelected`.
- Broker building polygons were displayed in Worldmap.
- HTTP selection for `way/34294737` produced `quest.map.objectSelected`.
- A `switch` plus `function` path produced `quest.task.activate` in Debug.

Teaching policy: explain Input → Transformation → Condition → State change → Output, and show where the player runtime differs from scenario editor.

Prototype version labels Map Test 01–04 are descriptive. The exact Node-RED exported flow JSON has NOT been committed; obtain verified flow exports before storing or claiming reproducibility.
