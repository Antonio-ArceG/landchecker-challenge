# PROPERTY API - Landfaker

## About this API

This is a simple API that compiles information about properties in Victoria to display in a simple JSON format. The data used for this API comes from different CSV files containing information about Local Government Areas (lga), the property itself, and the property's address.

## On Heroku

to see this API's payload you will have to append the ID of the property you'd like to explore to the following link
```
https://landfaker-challenge.herokuapp.com/api/v1/properties/[PROPERY_ID]
```

some examples of the property IDs are

[1525674](https://landfaker-challenge.herokuapp.com/api/v1/properties/1525674)
[45453823](https://landfaker-challenge.herokuapp.com/api/v1/properties/45453823)
[2047298](https://landfaker-challenge.herokuapp.com/api/v1/properties/2047298)
[173669948](https://landfaker-challenge.herokuapp.com/api/v1/properties/173669948)

## Before running
```
$ bundle install
```

## Database creation
```
$ rails db:create
$ rails db:migrate
```

## Populating database
```
$ rake import:database
```

## Gems used
- rspec
- csv
- jbuilder

## Test
```
$ rake spec:models
```

## Ruby version 
ruby 2.6.6

