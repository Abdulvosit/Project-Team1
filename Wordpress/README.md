# This code creates an ami for wordpress
#
* please change the keypair and ami name in the us-east-1.json file and other regions too 
 

* Run the following commands after updating the code:
    ```
    packer validate -var-file regions/us-east-1.json wordpress-image.json

    packer build -var-file regions/us-east-1.json wordpress-image.json
    ```

* Once machine created edit inboud rules for security_groupe to 0.0.0.0/0

  * port #  3306  >  mariadb 
  * port #  8080  >  wordpress 
  * port #  80    >  php/apache

* wordpress:  ami-  (temporary) 



