Installation method1:
```
apt update
```
download the binary from
wget https://developer.hashicorp.com/terraform/downloads
```
wget https://releases.hashicorp.com/terraform/1.6.3/terraform_1.6.3_linux_amd64.zip
```
extract
```
unzip terraform_1.6.3_linux_amd64.zip
```
```
mv terraform /usr/local/bin/
```
check version
```
terraform version
```

to remove terraform
```
rm -f /usr/local/bin/terraform
```

Installation method2:
```
apt udpate
```
```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
```
```
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
```
```
apt update
```
```
apt install terraform
```
```
terraform version
```
To Remove Terraform
```
apt purge terraform -y
```