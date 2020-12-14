# Connect 

A utility that helps you to *ssh* the servers with easily. 

### Steps to setup the utility

* A JSON processor([jq](https://stedolan.github.io/jq/))
```bash
<!-- Ubuntu Distro -->
sudo apt install jq

``` 
* Create a *servers.json* files with details of the servers in the given format
```json

{   
  "server_key_1":{
      "name":"Server Name",
      "ip":"IP Address",
      "url":"",
      "pem":"full pem file path"
  },
  "server_key_2":{
  "name":"Server Name",
  "ip":"IP Address",
  "url":"",
  "pem":"full pem file path"
  }
}

```
* Give executable permission to the file
```
chmod +x connect.sh
```
Now you are all setup to *ssh* to the servers

```
<!-- Syntax to ssh into the server. -->
./connect staging

```