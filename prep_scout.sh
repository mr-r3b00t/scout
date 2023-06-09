sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-virtualenv
#sudo apt install azure-cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

git clone https://github.com/nccgroup/ScoutSuite
cd ScoutSuite

virtualenv -p python3 venv
source venv/bin/activate
pip3 install azure-cli
pip3 install -r requirements.txt

az login --allow-no-subscriptions
az login --use-device-code

#tennant id = XXXXXXX-XXXXXXXXXXXXXXXXXXXXXX

python3 scout.py azure --tenant  --user-account
#python3 scout.py azure --tenant  --user-account-browser
