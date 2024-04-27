Out-Null
Import-Module PSReadLine
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
