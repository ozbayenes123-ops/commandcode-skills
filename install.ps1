[CmdletBinding()]
param(
    [string]$Target = (Join-Path $env:USERPROFILE '.commandcode\skills'),
    [switch]$Force,
    [switch]$Link
)

$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
    $skills = Get-ChildItem (Join-Path $root '*\skills\*') -Directory | Where-Object { Test-Path (Join-Path $_.FullName 'SKILL.md') }

if (-not $skills) {
    throw "Skill bulunamadi: $root altinda SKILL.md iceren klasor yok."
}
if (-not (Test-Path $Target)) {
    New-Item -ItemType Directory -Path $Target -Force | Out-Null
}

foreach ($skill in $skills) {
    $dest = Join-Path $Target $skill.Name
    if (Test-Path $dest) {
        if (-not $Force) {
            Write-Warning ("Atlandi (hedefte var): " + $skill.Name + " - uzerine yazmak icin -Force kullanin")
            continue
        }
        Remove-Item $dest -Recurse -Force
    }
    if ($Link) {
        New-Item -ItemType Junction -Path $dest -Target $skill.FullName | Out-Null
    } else {
        Copy-Item $skill.FullName $dest -Recurse -Force
    }
    Write-Host ("kuruldu: " + $skill.Name + " -> " + $dest)
}

Write-Host ""
Write-Host "Bitti. Command Code'u yeniden baslatin; skill'ler /<ad> olarak gorunur."
