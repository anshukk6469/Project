pipeline {
   agent any
   environment {
      TF_DIR = "terraform"
      ANSIBLE_DIR = "ansible"
   }
   
   stages {
      stage('Terraform init'){
        steps {
          sh '''cd ${TF_DIR}
             terraform init'''
         }
      }
       stage('Terraform Plan'){
        steps {
          sh '''cd ${TF_DIR}
             terraform plan -out=tfplan'''
         }
      }
       stage('Terraform Apply'){
        steps {
          sh '''cd ${TF_DIR}
             terraform apply tfplan'''
         }
      }
      stage('Run Ansible Playbook'){
        steps {
          ansiblePlaybook credentialsId: 'ssh-student-key', disableHostKeyChecking: true, inventory: 'terraform/inventory', playbook: 'ansible/webserver.yaml', vaultTmpPath: '' 
         }
      }
   }
}