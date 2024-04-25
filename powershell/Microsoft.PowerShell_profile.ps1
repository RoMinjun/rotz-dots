Out-Null
Import-Module PSReadLine
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionSource History

### Aliases
New-Alias -Name nf -Value neofetch

## GIT

### Functions
function off
{
  Stop-Computer -Force
}

function vi ([string]$file)
{
  nvim --cmd "lang en_US" $file
}

function updatePS
{
  winget upgrade --id Microsoft.PowerShell --source winget
}

function vmFix
{
  C:\Users\Gebruiker\Desktop\voicemeeterfix.ps1 -v
}

## GIT
function gia
{
  git add
}

function gcpu ($msg)
{
  git commit -a -m "$msg" && git push
}

function gs
{
  git status
}

function gco
{
  git commit
}

function gca ($msg)
{
  git commit -a -m "$msg"
}

function gph
{
  git push
}

function gpl
{
  git pull
}

#34de4b3d-13a8-4540-b76d-b9e8d3851756 PowerToys CommandNotFound module

Import-Module "C:\Program Files\PowerToys\WinUI3Apps\..\WinGetCommandNotFound.psd1"
#34de4b3d-13a8-4540-b76d-b9e8d3851756

# az cli tab completion
Register-ArgumentCompleter -Native -CommandName az -ScriptBlock {
  param($commandName, $wordToComplete, $cursorPosition)
  $completion_file = New-TemporaryFile
  $env:ARGCOMPLETE_USE_TEMPFILES = 1
  $env:_ARGCOMPLETE_STDOUT_FILENAME = $completion_file
  $env:COMP_LINE = $wordToComplete
  $env:COMP_POINT = $cursorPosition
  $env:_ARGCOMPLETE = 1
  $env:_ARGCOMPLETE_SUPPRESS_SPACE = 0
  $env:_ARGCOMPLETE_IFS = "`n"
  $env:_ARGCOMPLETE_SHELL = 'powershell'
  az 2>&1 | Out-Null
  Get-Content $completion_file | Sort-Object | ForEach-Object {
    [System.Management.Automation.CompletionResult]::new($_, $_, "ParameterValue", $_)
  }
  Remove-Item $completion_file, Env:\_ARGCOMPLETE_STDOUT_FILENAME, Env:\ARGCOMPLETE_USE_TEMPFILES, Env:\COMP_LINE, Env:\COMP_POINT, Env:\_ARGCOMPLETE, Env:\_ARGCOMPLETE_SUPPRESS_SPACE, Env:\_ARGCOMPLETE_IFS, Env:\_ARGCOMPLETE_SHELL
}
