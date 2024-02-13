Create Azure VM (Ubuntu) using azure cli

Pre-requisite: 
- Azure Subscription
- Installed Azure CLI (in Windows, macOS, Linux)

Process: 
- installed azure cli in your device
- check azure cli version "az --version"
- create .sh file and allow permission to execute
    Execution Permission Command "sudo chmod +x yourfilename.sh"
- login to your azure account using "az login"
    it will promt to your default browser to login in your azure account
- once you logged in successfully then just run the .sh file.
    after that it will ask you to input your resource group name, vm name, region, credential etc.
