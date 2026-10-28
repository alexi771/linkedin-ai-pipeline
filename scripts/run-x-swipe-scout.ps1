# Бот 1: утренняя сводка X. Запускается Планировщиком заданий в 6:00.
$ErrorActionPreference = 'Continue'
[Console]::OutputEncoding = [Text.Encoding]::UTF8
$dir = Join-Path $env:USERPROFILE 'linkedin'
$log = Join-Path $dir ("swipe\logs\" + (Get-Date -Format 'yyyy-MM-dd') + '.log')
Set-Location $dir
# Расширение Claude стоит в Vivaldi, не в Chrome. Если Vivaldi закрыт, открыть и дать расширению подключиться.
if (-not (Get-Process vivaldi -ErrorAction SilentlyContinue)) {
  Start-Process (Join-Path $env:LOCALAPPDATA 'Vivaldi\Application\vivaldi.exe') -WindowStyle Minimized
  Start-Sleep -Seconds 45
}
& (Join-Path $env:USERPROFILE '.local\bin\claude.exe') -p '/x-swipe-scout' `
  --chrome `
  --output-format stream-json --verbose `
  --allowedTools 'Skill' 'ToolSearch' 'Read' 'Write' 'Edit' 'Glob' 'Grep' 'mcp__claude-in-chrome__*' `
  *> $log
