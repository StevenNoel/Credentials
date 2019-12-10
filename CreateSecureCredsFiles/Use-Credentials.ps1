 Param(
                [string]$AESPath,
                [string]$SecurePassPath
                )

#These two text files (AES and SecurePWD are created ahead of time via https://github.com/StevenNoel/Credentials
$AESKeyFilePath = $AESPath # location of the AESKey                
$SecurePwdFilePath = $SecurePassPath # location of the file that hosts the encrypted password                
$username = "administrator"
$AESKey = Get-Content -Path $AESKeyFilePath 
$pwdTxt = Get-Content -Path $SecurePwdFilePath
$securePass = $pwdTxt | ConvertTo-SecureString -Key $AESKey
$Credential = New-Object System.Management.Automation.PSCredential ($Username, $securePass)
