Install require packages
------------

Laptop

        │

    Ansible

        │ SSH

        ▼

AWS Ubuntu EC2

        │

Install

Docker

Git

Nginx

Java

Updates

================================================================

Ansilbe playbook using Template (Jinja2)
--------------------------------------

Playbook

↓

Template

↓

group_vars/

↓

Replace Variables

↓

Deploy HTML


command
-------

ansible-playbook -i lab.ini deploy-web.yml

curl 13.214.101.47 (Web server IP)

===========================================================

Ansible role testing (Ansible galaxy)
-------------------------------------

Role

↓

Install nginx

↓

Configure nginx

↓

Start nginx

↓

Done

command
-------
ansible-galaxy init roles/nginx

after create role edit (tasks/main.yml) (templates)
Create play book and run
##Result check in screenshoot##

==========================================================

Final Labe to create completed Devops server
--------------------------------------------

   Laptop
      │
      │ ansible-playbook
      ▼
Ubuntu EC2
│
├── Common Packages
├── Nginx
├── Docker Engine
├── Java 21
└── Jenkins


playbook examples

---
- name: Enterprise DevOps Server
  hosts: web
  become: true

  roles:

    - common

    - nginx

    - docker

    - java

    - jenkins
  
  "After installation check the result in screenshoot"