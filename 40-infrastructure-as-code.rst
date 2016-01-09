
:class: slide

Infrastructure as Code (IAC)
============================

Definition:
  Infrastructure as Code (IAC) is a type of IT infrastructure that operations teams can automatically manage and provision through code, rather than using a manual process. Infrastructure as Code is sometimes referred to as programmable infrastructure.

----

:class: slide

- Concept of IAC is similar to programming scripts
- IAC uses higher-level or descriptive language to code: 
  - Versatile and adaptive provisioning 
  - Deployment process(es)
- IAC process closely resembles formal software design practices:
  - Developers carefully control code versions
  - Test code iterations
  - Limit deployment until the software is proven and approved for production

:class: slide

Example
=======
  Using Ansible (or Vagrant/Puppet/Chef/Salt...), an IT management and configuration tool, one could: 

  - install MySQL server,
  - verify that MySQL is running properly,
  - create a user account and password,
  - set up a new database and remove unneeded databases 

  -> all through code.

----

:class: slide

Using code to provision and deploy servers and applications is particularly interesting to software developers:

- no dependency on system administrators to provision and manage the operations aspect of a DevOps environment
- IAC process can provision and deploy a new application for quality assurance or experimental deployment

----

:class: slide

IAC also introduces potential disadvantages:

- IAC code development may require additional tools that could introduce learning curves and room for error
- Errors in IAC code can proliferate quickly through servers
- Monitoring/peer review for version control and comprehensive pre-release testing is mandatory
- If administrators can change server configurations without changing IAC code:
  - Potential for configuration drift
  - Inconsistent configurations across data centers

----

:class: slide

It is therefor important to fully integrate IAC into:

- systems administration
- IT operations
- DevOps processes
- with well-documented policies and procedures

1, 2, automate
  DevOps mantra meaning you should consider automating everything you envision to do more than 2 times in the foreseable future.
  

:class: slide

IAC @ Citrix
============


IAC for the build environment
-----------------------------

- New buildenvironment underway using jenkins for CI/CD
- Artifactory as the central storage facility
- Using Amazon Regions for DR

IAC for fully automated tests
-----------------------------

- Cucumber
- End2End Tests
  - show the RTC Gateway as an example (bamboo/jenkins jobs...)
- Run books (example)

