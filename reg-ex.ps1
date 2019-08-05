##################################################################################################
# hang-man.ps1
# Teo Espero
# Cloud and Systems Administration (BS)
# Western Governors University
#
# This game project is the PowerShell Hangman game. Although a little different
# from the traditional children’s Hangman game, this PowerShell game still captures the spirit
# of the original.
#
# The PowerShell Hangman game is a word guessing game in which the player is challenged to 
# guess a randomly selected secret word, a letter at a time. To win, the player must guess 
# each letter in the word in 12 guesses or fewer.
##################################################################################################

## picking a possible match from a list
## this is a non-case sensitive match

if ("Once upon a time" -match "ONCE") {
    Write-Host "Match!"
}

## picking a possible match from a list
## this is a case sensitive match

if ("Once upon a time" -cmatch "ONCE") {
    Write-Host "We have a match!"
}else{
    Write-Host "No match!"
}

## picking a possible match from a list
## of options indicate by the pipe "|"
## this is a non-case sensitive match

if ("mar" -match "(wa|ma|ja)r") {
 Write-Host "Match!"
}

## Matches a single character

if ("Molly" -match "M...y") {
 Write-Host "Match!-> M-oll-y"
}

## Matches at least one character specified inside brackets

if ("Molly" -match "M[io]lly") {
 Write-Host "Match!-> M-o-lly"
}

## Matches any character except those specified within brackets

if ("Randy" -match "[^RC]andy") {
 Write-Host "Match!-> M-o-lly"
}else{
 Write-Host "No match excluding R|C"    
}

## Matches at least one character specified within a range

if ("Randy" -match "[R-T]andy") {
 Write-Host "Match!-> -R-andy"
}

if ("March 13th" -match "[0-9]") {
 Write-Host "Match 0-9!"
}