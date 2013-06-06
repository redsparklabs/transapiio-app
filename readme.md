Instructions
========
Using Vagrant ensures we all have a dev environment that is identical.

*Install VirtualBox > 4.1
    https://www.virtualbox.org/

*Install Vagrant
    http://vagrantup.com

*Install git

### Clone this repo (first time only) ###

    $ git clone git@github.com:redsparklabs/transapiio-app.git
    $ cd transapiio-app

### Start the vagrant instance ###

    $ vagrant up
    # this will take a bit, since it has to install the software on the box.

### SSH into vagrant box ###

    $ vagrant ssh

    $ cd /vagrant

    $ bundle install

### Create the database (first time only) ###

    $ rake db:create

### Every  time ###

    $ rake db:migrate

### Start the server ###

    $ rails s puma

If you browse to http://localhost:3000 you should see the site.

### LOGIN DETAILS: ###
