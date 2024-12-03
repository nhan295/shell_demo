To execute code please following these steps:
Make sure that you already navigate to Downloads folder 
_Step 1_: Go to git bash or PowerShell and type the command:
    Navigate to Downloads folder then type the command:
    ssh -i nhan_b2111940.pem ubuntu@13.213.68.147 ## file.pem is the key pair when create the ec2
_Step 2_: Create file aws_resource_list.sh
_Step 3_: Update by command
    sudo apt install update
_Step 4_: Install and configure aws cli
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
Configure aws cli by create new access key in AWS
_Step 5_: Execute code to list all service in the account by command:
   ex: ./aws_resource_list.sh <region> <service name>
      ./aws_resource_list.sh ap-southeast-1 s3
  
