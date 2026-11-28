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


## 2026-11-26 — «Риск или победа»: поэтапная лабораторная проверка

Источники: скриншоты владельца и диагностические JSON в приватном репозитории (снимки перезаписываются).

| Этап | Конфигурация | Фактический результат | Статус |
|---|---|---|---|
| A | qg-quest, counter money initially 100 | Настройки обнаружены в отчёте Node-RED | Конфигурация подтверждена |
| B | qg-quest → qg-finish | «Добавьте хотя бы одно задание»; 0 задач, 1 шаг, 0 переходов | Импорт отклонён |
| C | qg-quest → qg-task → qg-finish | 1 задание, 2 шага, 1 переход; «Квест проходим, финал достижим» | Импорт принят |
| D | qg-quest → qg-task → qg-choice с двумя выходами на разные qg-finish | На скриншотах обе концовки достигнуты отдельно, GPS и confirm сработали | Виртуальный прогон подтверждён |
| E | qg-choice: два выхода на один qg-finish | Ещё не проверено | Ожидается |

Примечание: блок qg-task в испытаниях C/D содержал GPS (gps:true), координаты и подтверждение «Я на месте» — это не тест без GPS. Подписи правил выбора «вариант 1», «вариант 2» присутствовали, но лаборатория показала кнопки f1/f2. Причина не установлена. Начальный counter money=100 есть в конфигурации, но действия списания и последующие значения не проверялись; «Баллы: 0» не равно money=0.

Следующее действие: проверить этап E (общая цель двух выходов), сохранить результат до добавления действий и переменных. Связанные вопросы: ENGINE_REQUIREMENTS.md (QER-001/002/003).
