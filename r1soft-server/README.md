This code creates an ami for r1soft-server

please change the keypair and ami name in the us-east-1.json file and other regions too 

Run the following commands after updating the code:

packer validate -var-file regions/us-east-1.json  r1soft-server-image.json
packer build -var-file regions/us-east-1.json  r1soft-server-image.json


once machine created edit inboud rules for security_groupe

port # http  8080
port # https 8443
(temporary) r1soft1:  ami-05076597a0fd2621f



