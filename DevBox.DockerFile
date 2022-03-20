---
- name: "CICD test project"
hosts: debian
become: yes
tasks:
- name: "Installing GIT"
when: ansible_os_family == "RedHat"
yum:
name: git
state: present
