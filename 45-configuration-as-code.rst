:class: slide

configuration as code
=====================

"Configuration as code" is a subset of the larger "infrastructure as code" concept:

- adding of virtualization to the management of your configurations
- not just managing what's on your systems but also the existence of the systems themselves

:class: slide

What does treating "config as code" mean in a pracital sens?  

- Configuration is code;
- Apache config file(s) is/are basically a programming environment already
 
What that means is using (good) practices common to the world of a programmer.


:class: slide

revision control and deployment
===============================

- As "code" you manage it in a version control system, then you compile and deploy it out to a target system
- As "config" you edit configs in place on a system


:class: slide

tests
=====

- Make it testable
- regression, unit, integration, load, security...
- Monitoring
- Development and test environments

:class: slide

continuous integration/continuous deploy
========================================

- Follow a process
	- simple: design/code/test/deploy/maintain
- This can include more complex steps:
	- modeling
	- automated code validation
	- defect tracking
	- code reviews



