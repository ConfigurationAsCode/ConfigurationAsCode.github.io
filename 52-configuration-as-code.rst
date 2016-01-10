:class: slide

configuration as code
=====================

"Configuration as code" is a subset of the larger "infrastructure as code" concept:

- adding of virtualization to the management of your configurations
- not just managing what's on your systems but also the existence of the systems themselves

:class: slide

What does treating "config as code" mean in a pracital sense?  

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

:class: slide

Example: this talk ;-)
======================
- Written in ReStructuredText
- Converted to HTML5
- Stored on Github
- Buildt using Travis CI

-> A commit/push to GitHub will trigger Travis that will build a new HTML file that is commited to Github which is then accessible via GitHub Pages.

- GitHub Repo: github.com_
- Travis CI: travis-ci.org_
- GitHub Pages: github.io_

.. _github.com: https://github.com/ConfigurationAsCode/ConfigurationAsCode.github.io
.. _travis-ci.org: https://travis-ci.org/ConfigurationAsCode/ConfigurationAsCode.github.io
.. _github.io: http://configurationascode.github.io/

:class: slide

GitHub Repo
===========

.. image:: img/Talk-Github.png
   :height: 500px
   :alt: GitHub Repo View
   :align: center

:class: slide

Travis CI
=========

.. image:: img/Talk-Travis.png
   :height: 500px
   :alt: Travis CI View
   :align: center

:class: slide

CAS @ Citrix 1/2
================

- The build plans to create the docker images are create by jenkins jobs
	- Dependency graphs is built by parsing Dockerfiles
	- Plans trigger each other in right order
	- Change to base layer invokes rebuilt of upper layers
	- Configuration is completely stored in git repository


:class: slide

CAS @ Citrix 2/2
================

- To create a new docker image in Artifactor/Jenkins:
	- commit/push Dockerfile to git repository
	- *CreateAllSlaveImages* plan gets triggered by code change
	- *CreateAllSlaveImages* parses Dockerfile and triggers *CreateSlaveContainerProject* with Parameters
	- *CreateSlaveContainerProject* creates a Jenkins plan for new Dockerfile

:class: slide

One Plan for each Dockerfile
============================

.. image:: img/JeninsPlanCreation.png
   :height: 500px
   :alt: Jenins Plan Creation Plan
   :align: center


:class: slide

Live Demo of Jenkinsfile feature
================================
- The configuration of a plan changes with the sourcecode
	- if you add android capabilities to your code, you will need to change your build plan to built for android
- if you need to apply a hotfix for an old version, your changed build-plan will not work with the old source code base

-> solution is to save build plan alongside with the source code: *Jenkinsfile*



