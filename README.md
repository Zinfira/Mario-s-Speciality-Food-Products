# _Mario's Speciality Food Products_

#### _The site have functionality to review products and the database include a one-to-many relationship between Products and Reviews, 05/29/2020_

#### By _**Zinfira Safargalieva**_

## Description

_This application creates products and reviews by user or seed them from a database. User also is able to view, update and delete products or reviews. Database is includes a one-to-many relationship between Products and Reviews (one product, many reviews)_

## Specification
| Specs | Example Input | Example Output |
|-------|---------------|----------------|
| User is able to see list of products |  |  |
| User is able to create a new product | Name: 'chocolate milk' Country of origin: 'united states' cost $: '3' and click to 'Create Product' link | "Products: 'Chocolate Milk' $3 'United States'|
| User is able to update the product | Enter in the input forms Name: 'chocolate ice cream' country_of_origin: 'united states' cost $: '4' and click to 'update Product' button | "Products: 'Chocolate Ice Cream' $4 United States" |
| User is able to delete the product | Click 'Delete' link | "Products: ' _There are no products yet._'" |
| User is able to add reviews for the product | Author: 'Zinfira' content_body: "So tasty! It's my favorite flavor!" Rating: 5 | Product: 'Chocolate Ice Cream' Review by: 'Zinfira' Review: "So tasty! It's my favorite flavor!" Rating: 5 |
| User is able to update reviews for the product | Author: 'Zinfira' content_body: "Disgusting!" Rating: 1 | Product: 'Chocolate Ice Cream' Review by: 'Zinfira' Review: "Disgusting!" Rating: 1 |
| User is able to delete reviews | Click 'Delete' link | Product: 'Chocolate Ice Cream' _No reviews are listed for this product._|
| All fields for products should be filled out | Name: ' ' Cost $: ' ' Country of origin: ' '| 'Name can't be blank'  'Country of origin can't be blank'  'Cost can't be blank' |
| Use a callback to titleize all products name and countries | Name: 'chocolate milk' Country of origin: 'united states' cost $: '3' | 'Chocolate Milk' $3 'United States' |

## Setup/Installation Requirements

Clone this repository via Terminal using the following commands:

* >$ cd Desktop
* >$ git clone https://github.com/Zinfira/Mario-s-Speciality-Food-Products.git
* >cd Mario-s-Speciality-Food-Products

Next, confirm that you navigated to the Mario-s-Speciality-Food-Products project directory by entering ```pwd``` in Terminal.
Then, run at the project's root directory via Terminal the following commands:
* >$ bundle install
* >$ rake db:create
* >$ rake db:migrate
* >$ rake db:test:prepare
* >$ rake db:seed
* >$ rails server 

This commands should prepare the database and start the server.
Open the browser(Chrome) and input __localhost:3000__

## Known Bugs

_Not known bugs at this time._


## Support and contact details

_If you have any issues with the program or you have any suggestions, email me <zsafargalieva@gmail.com>_


## Technologies Used

_Ruby, Rails, Active Record, Capybara and Postgres_


### License

*Licensed under [MIT](https://en.wikipedia.org/wiki/MIT_License) license*

Copyright (c) 2020 **_Zinfira Safargalieva_**