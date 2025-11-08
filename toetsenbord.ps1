# Source - https://stackoverflow.com/a
# Posted by Vincent
# Retrieved 2025-11-08, License - CC BY-SA 4.0

# Exports/imports windows language settings to/from a file
function ImportExport-Languages {
[CmdletBinding()]
    param (
          [switch]$GenerateList,
          [string]$Path 
          )

    ## Export
    function Export-Lang {
        Get-WinUserLanguageList | ConvertTo-Json | Out-File $Path
    }

    ## Import
    function Import-Lang {
        $importedFile = Get-Content $Path | ConvertFrom-Json  
        $langCollection = New-Object System.Collections.Generic.List[Microsoft.InternationalSettings.Commands.WinUserLanguage]
        
        foreach ($item in $importedFile)
        {
            $lang = [Microsoft.InternationalSettings.Commands.WinUserLanguage]::new($item.LanguageTag)
            $lang.InputMethodTips.Clear() # clear default auto-generated input method
            foreach ($inputMethod in $item.InputMethodTips)
            {
                $lang.InputMethodTips.Add($inputMethod)
            }
            $lang.Handwriting = $item.Handwriting
            $lang.Spellchecking = $item.Spellchecking
            $langCollection.Add($lang)
        }
        Set-WinUserLanguageList $langCollection -Force
    }

    ## Run
    if ($GenerateList) { Export-Lang }
    Import-Lang
}
