
# List All Services in the AWS Account

## Steps to Execute Code  

### Prerequisites  
Make sure that you have navigated to the `Downloads` folder and have the required `.pem` file (key pair) for SSH.  

### Instructions  

**_Step 1_**: Go to git bash or PowerShell and type the command:  
- This command is used to remotely connect to an AWS EC2 (Elastic Compute Cloud) instance using the SSH (Secure Shell) protocol:  
  ```bash
  ssh -i nhan_b2111940.pem ubuntu@13.213.68.147
  ```

**_Step 2_**: Create the script file  
- Create a new file named `aws_resource_list.sh`.  

**_Step 3_**: Update system packages  
- Run the following command to update system packages:  
  ```bash
  sudo apt install update
  ```

**_Step 4_**: Install and configure AWS CLI  
1. Download the AWS CLI installer:  
   ```bash
   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
   ```
2. Unzip the installer package:  
   ```bash
   unzip awscliv2.zip
   ```
3. Install the AWS CLI:  
   ```bash
   sudo ./aws/install
   ```
4. Configure the AWS CLI by creating a new access key in AWS Management Console and running:  

**_Step 5_**: Execute the script  
- Run the script to list all services in the specified region and service name. Example:  
  ```bash
  ./aws_resource_list.sh <region> <service_name>
  ```
  Example usage:  
  ```bash
  ./aws_resource_list.sh ap-southeast-1 s3
  ```

### Notes  
- Replace `<region>` with your desired AWS region (e.g., `ap-southeast-1`).  
- Replace `<service_name>` with the AWS service name (e.g., `s3`).  
