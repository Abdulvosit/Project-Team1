This code creates an ami for Jenkins

please change the keypair and ami name in the us-east-1.json file and other regions too 

Run the following commands after updating the code:

packer validate -var-file regions/us-east-1.json jenkins-image.json
packer build -var-file regions/us-east-1.json jenkins-image.json

once machine created edit inboud rules for security_groupe

port # http 8080

(temporary) jenkins1 ami-0213dfa01ac82808c

