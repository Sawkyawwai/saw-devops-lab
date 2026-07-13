Jenkins Architecture

Developer

      │
git push

      ▼

GitHub Repository

      │

Webhook

      ▼

Jenkins

      │

Clone Repository

      │

Run Pipeline

      │

Terraform

      │

Ansible

      │

Deploy Website

      │

SUCCESS

-------------

Lab step 
-------
1. login to ec2
2. Cat Jenkin initialAdminPassword
3. Setup Jenkin
4. Install Jenkin require plugin eg.(docker, ansilb, terraform, git, etc...)
5. Create first Freestyle Project (Hello world) Check result in screenshot
6. Add SSH credentials to Jenkins.
7. Configure the pipeline to use Pipeline script from SCM.
8. Configure the Git repository URL and credentials.
9. Build again.
10. Verify the Jenkins workspace.
11. Update the Jenkinsfile on laptop.
12. Push the changes.
13. Build again and verify the updated output. ## Check In Screenshot
14. After that we add webhook in both github and jenkins




Jenkins file sample
-------------------

pipeline {

    agent any

    stages {

        stage('Checkout') {
            steps {
                echo 'Repository checkout completed.'
            }
        }

        stage('Environment') {
            steps {
                sh '''
                echo "===== System Information ====="
                hostname
                whoami
                pwd
                uname -a
                git --version
                java -version
                docker --version
                '''
            }
        }

        stage('List Repository') {
            steps {
                sh '''
                echo "===== Repository Contents ====="
                ls -lah
                '''
            }
        }

    }

}



----------------------------------------------