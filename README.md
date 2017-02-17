# _Son of Cod Seafood_

#### By _**Loren Glenn**, 2/17/2017_

## Description

Web Application that allows the a user to create an account and vote on menu items they'd like to see in the store.
Allows admin user to add new dishes to be voted on.

## Setup/Installation Requirements

* Clone this repo: `git clone https://github.com/LorenGlenn/seafood`
* Change to the repo directory: `cd seafood`
* Install gems: `bundle install`
* Install the database: *Instructions Below*
* In a separate CLI Run: 'rails s'
* Visit: `localhost:3000`

* To give a user admin rights in your console run the following commands immediately after creating the user you'd like to have these permissions:
* Run: 'rails c'
* Run: User.last.update_attribute :admin, true

## Database Setup Instructions

* Install and start postgres
* Run: `bundle exec rake db:create`
* Run: `bundle exec rake db:migrate`
* Run: `bundle exec rake db:test:prepare`

## Technologies Used

*HTML, Ruby, Postgres, Rails*

### License

*MIT License*

Copyright (c) 2017 **_Loren Glenn_**
