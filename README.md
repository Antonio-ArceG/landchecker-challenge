# LANDFAKER - API

## About this API

This API was designed as a response to a coding challenge by Landchecker.com

This is a simple API that compiles information about properties in Victoria to display in a simple JSON format. The data used for this API comes from different CSV files containing information about Local Government Areas (lga), the property itself, and the property's address.

## On Heroku

To see this API's payload you will have to append the ID of the property you'd like to explore to the following link
```
https://landfaker-challenge.herokuapp.com/api/v1/properties/[PROPERTY_ID]
```

some examples of the property IDs are

- [1525674](https://landfaker-challenge.herokuapp.com/api/v1/properties/1525674)
- [45453823](https://landfaker-challenge.herokuapp.com/api/v1/properties/45453823)
- [2047298](https://landfaker-challenge.herokuapp.com/api/v1/properties/2047298)
- [173669948](https://landfaker-challenge.herokuapp.com/api/v1/properties/173669948)

## Before running
Before you run this API on your local, please run bundle install to install the required gems.

```
$ bundle install
```

## Database creation
To create database please run the following from terminal
```
$ rails db:create
```
To run migrations please run
```
$ rails db:migrate
```

## Populating database
To populate PostgrSQL, you can run the rakefile taks by inputting the following in terminal
```
$ rake import:database
```
```import:database``` will then invoke the other rake tasks inside the import.rake file.

The tasks in order are:
- Imports lga data from the provided csv file into PostgreSQL
- Parses property data from the provided csv file 
  - Finds Lga instance by id matching 'lga_code' to set relationship between models. It then imports it into PostgreSQL
- Parses address data from the provided csv file 
  - Finds Lga and property instances by id matching 'lga_code' and 'property_id' to set relationship between models. It then imports it into PostgreSQL

## Test
```$ rake spec``` will run the tests set up with Rspec.

Currently, the tests are designed for two things:
- to alert to any changes to all three models (i.e. if a new validation is introduced to a model) 
- to check if API view is displaying succesfully and showing the necessary information

Tests have been refactored by using Factory_bot, a gem used for setting up Ruby objects as test data with simplified syntax.
Database_cleaner ensures test databases are cleared after every time. So you can simply run rake spec without setting the tests up before-hand.



## Gems used
- Csv
- Jbuilder
- Rspec
- Factory_bot
- Database_cleaner



## Ruby version 
ruby 2.6.6

