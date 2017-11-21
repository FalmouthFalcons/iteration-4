# Bangazon Iteration 3 
The First UI Version of Bangazon User-facing platform

* Allow a Bangazon user to perform the following: 
  * Interact with a basic product ordering database via a local host 3000 interface. 
  * Register a new account to save a personal profile, products to buy and products to sell 
  * Browse/Search/Sort/Filter products to BUY, including the following details about a product: 
      * Title, description, type, category, price/ea, quantity available, local delivery, ability to add to an order. 
  * Add products to an order / remove products from an order. 
  * Complete an order using a saved payment method. 
  * Add new product and its details in a product listing to SELL.
  * Product inventory shall update according to listing (active/inactive) or per-purchase. 
  * Edit personal profile including email, password, city of residence, and add/edit payment types. 
  
## Getting Started & Installing

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

1. ```git clone https://github.com/FalmouthFalcons/iteration-3.git```
2. run ```ruby schema.rb``` in db folder
3. The database path environmental variable: in the files the database path is set to an
    enviromental variable which you will need to configure in you .zshrc or .bash file
        - follow these instructions:
        [instructions](https://gist.github.com/iest/58692bf1001b0424c257) 
        to create the variable and set it to the absolute path of the bangazon_sqlite3.sqlite3 file
4. Based on the context of the user's environment, perform some or all of the following actions/commands: 
  * Gemfile alterations 'bcrypt' and 'wdm'
  * bundle install 
  * rails db:seed 
  * rails db:migrate
  * rails server 
  * see localhost:3000 in your browser. 


## Built With

* Ruby
* Rails 
* SQL

## Authors

* **Adam White** - *Team Lead*
* **Jim Vickery**
* **Malcolm Ford**
* **Jasmine Quach**
* **Clay Massey**

## Acknowledgments

* Hat tip to Hannah Hall for helping us find solutions to our stumpers :)
