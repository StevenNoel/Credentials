# Create-Automate-Credentials
This script is used to store encrypted credentials.  These files can be used to make calls from other scripts as a way to securely call credentials.  AKA, run a scheduled script, and inside the script use the credentials that were used to create the files.

NOTE: Make sure to lock down the files, as they are recoverable and can be decrypted.

NOTE 2: Another way of doing this would be to use Hashicorp Vault


# Examples
```
.\Create-Automate-Credentials.ps1 -AESPath "\\NAS\Share\AES.txt" -SecurePassPath "\\NAS\Share\SecurePass.txt"
```
This Example runs the script, asks for Credentials, and stores the AES key in \\NAS\Share\aes.txt and also stores the secure password in \\NAS\Share\SecurePass.txt
