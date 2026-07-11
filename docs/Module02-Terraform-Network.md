Objectibe
----------
Create AWS Resources with terrafor


AWS Cloud Architecture
-----------------------
│
└── VPC (10.0.0.0/16)
    │
    ├── Public Subnet (10.0.1.0/24)
    │
    ├── Internet Gateway
    │
    └── Route Table
            │
            ▼
      Internet Access

Command
-------
create environment variable
1. terraform init
2. terraform validate
3. terraform plan 
4. terraform apply

##For Expected output check in attached screenshot##

=====================================================

AWS Cloud Architecture

                   AWS Cloud
                        │
              ┌─────────┴─────────┐
              │                   │
          Internet          Internet Gateway
              │                   │
              └─────────┬─────────┘
                        │
                    Public Subnet
                        │
        ┌───────────────┴───────────────┐
        │                               │
   Security Group                  Elastic IP
        │                               │
        └───────────────┬───────────────┘
                        │
                  Ubuntu EC2

Create local ssh key and upload to AWS (We want dediate public key for ec2 login)
And then we prepare terraform file fore Security group, Elastic IP, Internet GW, EC2

1. terraform fmt (Always format before validate)
2. terraform validate
3. terraform plan 
4. terraform apply

##check the testing result in screentshot (ec2-login-test-result)##