# Quest Game palette UI patch 01. Applies only to the pinned editor template.
param([Parameter(Mandatory=$true)][string]$EditorHtml)
$ErrorActionPreference = 'Stop'
$p = (Resolve-Path -LiteralPath $EditorHtml).Path
$s = [IO.File]::ReadAllText($p)
$pattern = '(?s)(<script type="text/html" data-template-name="qg-task">)(.*?)(</script>)'
$m = [regex]::Matches($s,$pattern)
if ($m.Count -ne 1) { throw 'Expected exactly one qg-task template' }
$t = $m[0].Groups[2].Value
$old = '<input type="text" id="node-input-need" placeholder="all / any / число" style="width:30%">'
if (-not $t.Contains($old)) { throw 'Unexpected upstream or already patched. No changes made.' }
$select = '<select id="node-input-need" style="width:60%"><option value="">По умолчанию (все)</option><option value="all">Все проверки (all)</option><option value="any">Любая проверка (any)</option><option value="1">Одна (1)</option><option value="2">Две (2)</option><option value="3">Три (3)</option><option value="4">Четыре (4)</option><option value="5">Пять (5)</option><option value="6">Шесть (6)</option></select>'
$t = $t.Replace($old,$select)
$tips = @{
qid='Идентификатор шага. Пустое поле: идентификатор создаётся при импорте.'
title='Название задания для игрока.'
text='Описание задания для игрока.'
show='Что игрок видит по пути к заданию.'
lat='Широта центра геозоны.'
lon='Долгота центра геозоны.'
radiusM='Радиус геозоны в метрах (1–1000).'
playerRadiusM='Параметр запаса GPS в метрах (0–200).'
exitBufferPct='Параметр запаса при выходе из геозоны в процентах (0–100).'
playerName='Игровое название выбранного объекта карты.'
gps='Включить проверку прибытия в геозону.'
confirm='Надпись на кнопке подтверждения прибытия.'
code='Секретный код; пустое поле отключает проверку.'
qr='Включить проверку QR.'
qrValue='Ожидаемое содержимое QR; пустое поле генерируется при импорте.'
answer='Допустимые ответы через точку с запятой или новую строку.'
attempts='Лимит попыток ответа; пустое поле — без ограничения.'
need='Сколько проверок должно пройти. Число не должно превышать количество включённых проверок.'
points='Базовые баллы.'
norm='Норматив времени, например 15m.'
late='Изменение баллов за минуту опоздания.'
early='Изменение баллов за минуту досрочного выполнения.'
min='Минимальные баллы.'
hidden='Скрытое задание (пасхалка).'
reserve='Запасное задание.'
}
foreach($k in $tips.Keys) {
  $needle = 'id="node-input-' + $k + '"'
  if ([regex]::Matches($t,[regex]::Escape($needle)).Count -ne 1) { throw "Unexpected field: $k" }
  $tip = [System.Net.WebUtility]::HtmlEncode($tips[$k])
  $t = $t.Replace($needle, $needle + ' title="' + $tip + '"')
}
# Preserve existing saved values outside the supported list by refusing to claim compatibility until browser tests.
$new = $s.Substring(0,$m[0].Groups[2].Index) + $t + $s.Substring($m[0].Groups[2].Index+$m[0].Groups[2].Length)
$backup = $p + '.qg-ui01.bak'
if (Test-Path -LiteralPath $backup) { throw 'Backup exists; no changes made.' }
Copy-Item -LiteralPath $p -Destination $backup
[IO.File]::WriteAllText($p,$new,[Text.UTF8Encoding]::new($false))
Write-Host "UI patch applied. Backup: $backup"
