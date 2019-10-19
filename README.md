Bootstrap
================================

Install Ruby 
-

    rvm install ruby-2.4.1
    rvm use 2.4.1

Create SecretCode gemset
-

    rvm gemset create SecretCodeApp

Delete global Gemset
-

    rvm gemset delete global

Make sure you are using ruby 2.4.1 with SecretCode gemset
-

    rvm use ruby-2.4.1@SecretCodeApp
    rvm current
> ruby-2.4.1@SecretCodeApp

Clone the project
-

    git clone https://github.com/meghasharma92/SecretCodeApp

Add .ruby-gemset and .ruby-version file to the directory
-

    echo "SecretCodeApp" > SecretCode/.ruby-gemset
    echo "ruby-2.4.1" > SecretCode/.ruby-version

CD into project
-

    cd SecretCodeApp

Install Gems
-
    bundle install

Devise Views
-
    rails generate devise:views    

Create databases
-

    rails db:create && rails db:migrate

Load schema and generate seed data
-

    rails db:seed

Run server locally
-

    rails s 

Note: Uncomment generate_code for without gem code.    
