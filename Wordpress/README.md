This code creates an ami for wordpress

please change the keypair and ami name in the us-east-1.json file and other regions too 

Run the following commands after updating the code:

packer validate -var-file regions/us-east-1.json wordpress-image.json
packer build -var-file regions/us-east-1.json wordpress-image.json

once machine created edit inboud rules for security_groupe

port # mariadb      3306
port # wordpress    8080
port # php/apache   80
(temporary) wordpress:  ami-



