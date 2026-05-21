# use-generated-layouts.ps1
# Swaps layouts/ <-> layouts-generated/ so you can compare hand-written
# vs generated layouts side-by-side.
#
# Usage:
#   # Activate generated layouts:
#   .\use-generated-layouts.ps1
#
#   # Restore hand-written layouts:
#   .\use-generated-layouts.ps1 -Restore
#
# The script renames directories atomically (within the same volume):
#   layouts/           -> layouts-backup/
#   layouts-generated/ -> layouts/
# On -Restore:
#   layouts/           -> layouts-generated/
#   layouts-backup/    -> layouts/

param(
    [switch]$Restore
)

$ErrorActionPreference = "Stop"
$ThemeDir = $PSScriptRoot

$Layouts         = Join-Path $ThemeDir "layouts"
$LayoutsGenerated = Join-Path $ThemeDir "layouts-generated"
$LayoutsBackup   = Join-Path $ThemeDir "layouts-backup"

if (-not $Restore) {
    # Activate generated layouts
    if (-not (Test-Path $LayoutsGenerated)) {
        Write-Error "layouts-generated/ not found. Run generate-layouts.py first."
        exit 1
    }
    if (Test-Path $LayoutsBackup) {
        Write-Warning "layouts-backup/ already exists — previous backup in place."
    } else {
        Rename-Item -Path $Layouts -NewName "layouts-backup"
        Write-Host "Moved layouts/ -> layouts-backup/"
    }
    Rename-Item -Path $LayoutsGenerated -NewName "layouts"
    Write-Host "Moved layouts-generated/ -> layouts/"
    Write-Host ""
    Write-Host "ACTIVATED: Slidev now uses generated layouts."
    Write-Host "Run the validator to check SSIM scores, then restore when done:"
    Write-Host "  .\use-generated-layouts.ps1 -Restore"
} else {
    # Restore hand-written layouts
    if (-not (Test-Path $LayoutsBackup)) {
        Write-Error "layouts-backup/ not found. Cannot restore without a backup."
        exit 1
    }
    Rename-Item -Path $Layouts -NewName "layouts-generated"
    Write-Host "Moved layouts/ -> layouts-generated/"
    Rename-Item -Path $LayoutsBackup -NewName "layouts"
    Write-Host "Moved layouts-backup/ -> layouts/"
    Write-Host ""
    Write-Host "RESTORED: Slidev now uses hand-written layouts."
}
