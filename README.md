# --------- Project1 --------
## Using packer build the following AMIs:
1. jenkins
    * OS is upto date
    * version of jenkins is interpolated from vars file along with java version

2. R1soft server.
    * OS is upto date

3. Wordpress
    * OS is upto date
    * php, mysql, wordpress should compatible.
    
* When building this image keep in mind, you will be asked to rebuild again in 2 month.
* Put as many variables as possible so we can customize in the future

* Document the steps so you can onboard other engineers quickly.

* Please install awsagent so we can run aws inspector assessments
