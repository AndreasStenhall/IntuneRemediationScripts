<#
Version: 1.0
Author: Andreas Stenhall - Trusted Advisor at Coligo - andreas.stenhall@coligo.se | https://www.theexperienceblog.com
Script: Detect-KeyboardLayout.ps1
Description: Detect if English (US or GB) keyboard layouts are configured.
Run as: User
Context: 64-bit
#> 

$UserLanguageList = Get-WinUserLanguageList
if ($UserLanguageList.LanguageTag -contains "en-US" -or $UserLanguageList.LanguageTag -contains "en-GB") {
    Write-Output "Non-Compliant"
    exit 1
} else {
    Write-Output "Compliant"
    exit 0
}
