#Guildines to deploy the infrastructure with the Terraform files

#Installation Requirements: --> https://learn.hashicorp.com/tutorials/terraform/eks#prerequisites 
-  AWS account 
- AWS IAM Authenticator
- Terraform
- AWS CLI
- kubectl

# AWS Credential Configuration steps
- Configure AWS credentials --> run $ aws configure on your terminal

- Enter your AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and AWS_REGION

- Create AWS named profile --> https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html#cli-configure-profiles-create 

- Replace the variable value of aws_profile in c2-01-generic-variables.tf with your configured profile name.



# Actions to deploy the Infrastruction with the Terraform manifest
cd to the 'terraform directory' in challenge2 as WORKDIR

RUN terraform init

RUN terraform validate

RUN terraform plan

RUN terraform apply -auto-approve


# CleanUp

RUN terraform destroy -auto-approve

sudo rm -rf .terraform*
sudo rm -rf terraform.tfstate*