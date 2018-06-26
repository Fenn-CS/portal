Automated Testing 
=================

Documentation on running automated tests with selenium for systers/portal.

Setup Selenium (Unix)
---------------------

To run selenium test you would need to install (download) the standalone servers which implements WebDrivers' wire protocols : 
* geckodriver and
* chromedriver 

is used here not withstanding, other WebDriver servers may be used with a little tweaking (which entails adding the desired webdriver in the browsers dictionary in the conftest.py) 

### Installation 

1. Download chromedriver [here](https://sites.google.com/a/chromium.org/chromedriver/home)
1. Download geckodriver [here](https://github.com/mozilla/geckodriver/releases)

Get latest versions, and make sure the version downloaded is meant for your OS and is compatible (32/64 bits)

After downloading, extract both drivers and save in a directory (e.g webdrivers) in a location of choice, finally let selenium know where it can find the webdrivers by exporting the paths to the various executables, you would have to do this every time your (re)start you venv (or any enviroment for that matter) 

```bash
export PATH=$PATH:/path/to/directory/of/executable/downloaded/
```

That is quite boring you can just make each of them available globally once and for all 

```bash
sudo mv geckodriver /usr/local/bin 
sudo mv chromedriver /usr/local/bin
```

You can also write a .bashrc script and export, to avoid the repetition this method however has thesame effect as simply moving the files to ```/usr/local/bin``` above.

Note : Be sure to export only the directory(ies) containing the executables without including the executables to avoid the "NotADirectoryError: [Errno 20] Not a directory"


Continues Integration with Jenkins
==================================

Jenkins is used to facilate our continues integration operations. Here we observe how to setup jenkins (on debian a distro like Ubuntu) for our project.

###Requirements :

1. Java (JDK) 8 is required

Install Jenkins by running :
```
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
```

To ensure jenkins is installed try starting it :

`sudo systemctl start jenkins`

Since systemctl doesn't display output, we'll use its status command to verify that it started successfully:

`sudo systemctl status jenkins`

If everything went well, the beginning of the output should show that the service is active and configured to start at boot:

Output
```
jenkins.service - LSB: Start Jenkins at boot time
  Loaded: loaded (/etc/init.d/jenkins; bad; vendor preset: enabled)
  Active:active (exited) since Thu 2017-04-20 16:51:13 UTC; 2min 7s ago
    Docs: man:systemd-sysv-generator(8)
```

Visit localhost:8080 to do some post-installation operation. Follow the instructions to get initial password.

NB : Password may be found on your console or in the InitialPassword file check both locations.

Please visit : https://jenkins.io/doc/book/installing (/#debian-ubuntu) for more information on setting up Jenkins, including how to setup on onther operating systems.