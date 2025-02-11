<#
Version: 1.0
Author: Andreas Stenhall - Trusted Advisor at Coligo - andreas.stenhall@coligo.se | https://www.theexperienceblog.com
Script: RemediateKeyboardLayout.ps1
Description: Set Swedish(sv-SE)  keyboard layout only and make sure that the Windows Display Language is still set to English (United States) (en-US).
Run as: User
Context: 64-bit
#> 

Set-WinUserLanguageList sv-SE -Force
Set-WinUILanguageOverride -Language en-US
