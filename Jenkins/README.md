############# Project1 #############
Using packer build the following AMIs
1. jenkins
    a. OS is upto date
    b. version of jenkins is interpolated from vars file along with java version

2. R1soft server.
    a. OS is upto date

3. Wordpress
    a. OS is upto date
    b. php, mysql, wordpress should compatible. When building
    this image keep in mind, you will be asked to rebuild again in 2 month.
    Put as many variables as possible so we can customize in the future

Document the steps so you can onboard other engineers quickly.

Please install awsagent so we can run aws inspector assessments

Installation of the amazon agent
curl -O https://inspector-agent.amazonaws.com/linux/latest/install
bash install
https://docs.aws.amazon.com/inspector/latest/userguide/inspector_installing-uninstalling-agents.html
Verification: systemctl status awsagent

Team1 has to build mariadb server and give it to Team3.
Make sure mariadb is up and running when they build ASG
