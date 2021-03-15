# PROPERTY API - Landfaker

## About this API

This is a simple API that compiles information about properties in Victoria to display in a simple JSON format. The data used for this API comes from different CSV files containing information about Local Government Areas (lga), the property itself, and the property's address.

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
rspec
csv
jbuilder

## Test
```
$ rake spec:models
```

## Ruby version 
ruby 2.6.6

