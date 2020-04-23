Getting Started with Sphinx
############################

Installing Sphinx
******************

I reviewed `Read the Docs <https://readthedocs.org/>`_ and other sources to set up Sphinx on my Windows 10 PC.

The following are the steps I followed, including lessons learned.

The steps include:

**1. Install Python.**

I downloaded python from https://www.python.org/downloads/.

.. Note:: I already had Python version 3.7.3 installed. It seems I did not have pip, which is required to install Sphinx. I deleted Python 3.7.3 and installed Python 3.8.2.

**2. Install Sphinx.**

I selected: Git Bash Here at my Script folder. This folder contains pip files. I typed at the prompt:

$ pip install Sphinx

Next, I created files for Sphinx and saved the files in my week 7 homework folder.

**Doing the Wrong Thing**

This is what I did wrong: I created conf.py and index.rst files from scratch. The solution is to install sphinx-quickstart.

**Creating files from scratch for Sphinx**

I followed the steps:

* Create conf.py to configure Sphinx.

* Create index.rst.

* Build documentation. 

I typed at the prompt:

$ sphinx-build -b html -q -W -n . _build

When I click on index.html, I see the html.
  
**Doing the Right Thing**

The right thing to do is install Sphinx-Quickstart.

**Installing Sphinx-Quickstart**

When I installed Sphinx, I noticed there was a sphinx-quickstart.exe file.
I double-clicked on sphinx-quickstart.exe and it set up separate **build** and **source** folders on my PC.
Now I have the Sphinx files, including conf.py and index.rst. These are automatically set up with sphinx-quickstart.


Getting Started with Sphinx
############################

Creating and Building Content
******************************

I followed these steps to create and build content in Sphinx.

1. Create content in .rst files and save in a folder:_sphinx-docs in the source folder.

2. Add path and file names (without file extension) to toctree.

3. Make a build.

To make a build, type in the command line:

$ make.bat html

Sphinx builds your content.