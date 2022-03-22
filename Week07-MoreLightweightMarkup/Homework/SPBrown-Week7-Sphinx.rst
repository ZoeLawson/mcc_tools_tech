

=============================================================
How To Install Sphinx on Windows 
=============================================================
:Author:
   Stephen P. Brown
  
.. https://livesphinx.herokuapp.com/
.. URL used to edit the .rst file and review
  
Steps to be performed:
----------------------
1.  **Installation of python version 3 on Windows**
2.  **Installation of Sphinx**
3.  **Create the Sphinx build directory**

------------------------------------------

1. **Install Python version 3**

a. Check Windows if python is installed.

 - Use the Search function and type:  cmd
 - Right click on Command Prompt; Select *Run as Administrator*
 - Check if there is a python version installed:
      LocalDirectory> ``python --version``

      Sphinx runs best with python version 3. 

b. Download version 3 of python 

 - Website: https://www.python.org/downloads/
 - Download the latest python 3 version: (3.10.1.3)
 - Install python using the executable file: **python-3.10.3-amd64.exe**
 - Check the version of python to verify the installation
 - C:\LocalDirectory> ``python --version``
        ``Python 3.10.3``

2. **Installation of Sphinx**

a. Sphinx can be interactively installed from the Windows command line with python.

 - Installation instructions for Sphinx:
    Website: https://www.sphinx-doc.org/en/master/usage/installation.html#windows

    Website: https://www.sphinx-doc.org/en/master/usage/installation.html#windows-other-method

b. Install Sphinx on the Windows command line:
 - Right click on Command Prompt; Select *Run as Administrator*
  C:\LocalDirectory> ``pip install -U sphinx``

   ``Collecting sphinx``
    ``Downloading Sphinx-4.4.0-py3-none-any.whl (3.1 MB)``
       ``---------------------------------------- 3.1/3.1 MB 5.5 MB/s eta 0:00:00````

 - Check the installed version of Sphinx:
   ``C:\LocalDirectory>sphinx-build --version``
  ``sphinx-build 4.4.0``

3.  **Create the Sphinx build directory**

 - Instructions to setup Sphinx:

  Website https://www.sphinx-doc.org/en/master/usage/quickstart.html

  ``C:\Windows\system32>sphinx-quickstart``

  *Welcome to the Sphinx 4.4.0 quickstart utility.*

  *Please enter values for the following settings (just press Enter to
  accept a default value, if one is given in brackets).*

  ``Selected root path: .``

  *You have two options for placing the build directory for Sphinx output.
  Either, you use a directory "_build" within the root path, or you separate
  "source" and "build" directories within the root path.*

  ``> Separate source and build directories (y/n) [n]:  n``

  *The project name will occur in several places in the built documentation.*

  ``> Project name: MCC-reST``

  ``> Author name(s): Stephen P. Brown``

  ``> Project release []: 1.0``

  *If the documents are to be written in a language other than English,
  you can select a language here by its language code. Sphinx will then
  translate text that it generates into that language.*

  *For a list of supported codes, see*

  Website: https://www.sphinx-doc.org/en/master/usage/configuration.html#confval-language.


  ``> Project language [en]:``

  ``Creating file C:\Windows\system32\conf.py.``

  ``Creating file C:\Windows\system32\index.rst.``

  ``Creating file C:\Windows\system32\Makefile.``
  
  ``Creating file C:\Windows\system32\make.bat.``

  *Finished: An initial directory structure has been created.*

  *You should now populate your master file C:\Windows\system32\index.rst and create other documentation
  source files. Use the Makefile to build the docs, like so:*
   ``make builder``
  *where "builder" is one of the supported builders, e.g. html, latex or linkcheck.*
