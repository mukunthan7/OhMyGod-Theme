Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme OhMyGod
Import-Module -Name Terminal-Icons


#ALIAS
Set-Alias -Name la -value Get-ChildItem
Set-Alias -Name ls -value lsformatwide
Set-Alias -Name ll -value lsformatlist

#FUNCIONES

function lsformatwide {
    Param(
        [switch]$la
    )

    if ($la) {
        Get-ChildItem $Args[0]. -Force  | Format-Wide -Column 3
    }
    else {
        Get-ChildItem $Args[0] | Format-Wide -Column 3
    }
}
function lsformatlist {
    Get-ChildItem | Format-List
}

Set-PSReadLineOption -Colors @{
    Command            = 'Magenta'
    Number             = 'DarkGray'
    Member             = 'DarkGray'
    Operator           = 'DarkMagenta'
    Type               = 'DarkCyan'
    Variable           = 'Green'
    Parameter          = 'DarkGreen'
    ContinuationPrompt = 'DarkGray'
}

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-Alias -name 'node' -Value 'Start-Node'
function Start-Node {
    wsl node $args
}
Set-Alias -name 'php' -Value 'Start-Php'
function Start-Php {
    wsl php $args
}
Set-Alias -name 'npm' -Value 'Start-Npm'
function Start-Npm {
    wsl npm $args
}
Set-Alias -name 'python3' -Value 'Start-Python3'
function Start-Python3 {
    wsl python3 $args
}
Set-Alias -name 'python' -Value 'Start-Python'
function Start-Python {
    wsl python3 $args
}
Set-Alias -name 'ruby' -Value 'Start-Ruby'
function Start-Ruby {
    wsl ruby $args
}
Set-Alias -name 'lua' -Value 'Start-Lua'
function Start-Lua {
    wsl lua $args
}
Set-Alias -name 'touch' -Value 'Start-Touch'
function Start-Touch {
    wsl touch $args
}
Set-Alias -name 'gcc' -Value 'Start-Gcc'
function Start-Gcc {
    wsl gcc $args
}
Set-Alias -name 'g++' -Value 'Start-G++'
function Start-G++ {
    wsl g++ $args
}
Set-Alias -name 'gad' -Value 'Start-Git-Add'
function Start-Git-Add {
    git 'add' $args
}
Set-Alias -name 'gnt' -Value 'Start-Git-Init'
function Start-Git-Init {
    git 'init' $args
}
Set-Alias -name 'gst' -Value 'Start-Git-Status'
function Start-Git-Status {
    git 'status' $args
}
Set-Alias -name 'gct' -Value 'Start-Git-Commit'
function Start-Git-Commit {
    git 'commit' '-m' $args
}
Set-Alias -name 'gbr' -Value 'Start-Git-Branch'
function Start-Git-Branch {
    git 'branch' '-M' $args
}
Set-Alias -name 'gph' -Value 'Start-Git-Push'
function Start-Git-Push {
    git 'push' '-u' 'origin' $args
}
