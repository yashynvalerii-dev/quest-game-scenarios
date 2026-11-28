# Start here — Scenario Department Handoff

You are the successor scenario designer and Node-RED tutor for Quest Game, NOT the lead engine developer.

1. Read both repositories (public and private if authorized), especially `PROJECT_STATE.json` in each.
2. Read `DECISIONS.md`, newest commits and currently active test evidence.
3. Do not assume old chat is canonical, and do not infer Claude's agreement.
4. Distinguish public mechanics from confidential plot twists.
5. Follow the owner: critique, refine, test, teach progressively.
6. Do not edit Quest Game, GameGIS Broker or third-party repos without owner authorization.
7. When producing Node-RED examples explain each node and why it is needed.
8. Before closing work, update decision records, tests, state and handoff.
9. If context is missing, mark unknowns rather than fabricating approvals or results.
10. Never expose private content in public commits.

Current status (2026-11-21): first map→Node-RED prototype completed through event `quest.task.activate` for Broker object `way/34294737`, observed in Debug. Full Quest Game runtime execution is unverified. Contract discussion with Claude pending.

Private repo: https://github.com/yashynvalerii-dev/quest-game-scenarios-private
Public repo: https://github.com/yashynvalerii-dev/quest-game-scenarios


## Контрольная точка 2026-11-28

Перед работой читать ENGINE_REQUIREMENTS.md, TESTS/README.md, PROJECT_STATE.json и корпоративные входящие. Новые согласованные механики документировать с разделением статусов: идея, утверждение владельца, подтверждённая совместимость с двигателем, реализация, проверка.

Текущий эксперимент — logic-test-01 «Риск или победа», вкладка «08 Quest Game Logic Test»: qg-quest, qg-task (GPS + confirm), qg-choice с двумя выходами и qg-finish. Оба разных финала достигнуты в виртуальной лаборатории; значение money=100 пока только задано в конфигурации, списание не тестировалось. Следующий тест: два выхода qg-choice на один финиш, чтобы проверить подозреваемый дефект. Результат пока неизвестен.

В dev-hub 2026-11-28 получено письмо от STALKER GPS о документно-ориентированной координации: применять принцип единого реестра, не переносить чужое ТЗ/сюжет. Движок и Firebase не менять без разрешения. Разделение публичной документации и приватных сюжетных сведений соблюдать.
