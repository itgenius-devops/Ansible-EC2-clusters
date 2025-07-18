This repository is designed to help learn and apply core Ansible concepts through practical, task-oriented examples.
Each playbook focuses on a specific system operation, providing a clear and structured approach to managing remote hosts using Ansible.

```
Ansible-Playbooks/
├── inventory/hosts        
├── playbook-1-ping.yml
├── playbook-2-files.yml
├── playbook-3-users-packages.yml
├── playbook-4-services.yml
├── playbook-5-system-info.yml
```



# Ansible Role Structure
```
Ansible-Roles/
├── hosts                         # Inventory file defining target instances
├── playbook-1-ping.yml           # Playbook for pinging a specific host using a role
├── playbook-2-files.yml          # Playbook for managing files on another host using a role
├── roles/
│   ├── ping_check/               # Role for basic connectivity checks
│   │   └── tasks/
│   │       └── main.yml
│   └── file_management/          # Role for file creation and management
│       └── tasks/
│           └── main.yml
