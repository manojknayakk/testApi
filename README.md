##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.7.0] ( https://rvm.io/rvm/install )
- Rails [6.0.3.1] ( https://rvm.io/rvm/install )

##### 1. Check out the repository

```bash
git clone git@github.com:manojknayakk/testApi.git
```

##### 2. Update database.yml file

Edit the database configuration in config/database.yml as per your local postgres credentials.


##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
rake db:create
rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
rails s
```

And now you can visit the site with the URL http://localhost:3000


##### 5. To get all products

you can visit the site with the URL http://localhost:3000/products


##### 6. To get all news articles

you can visit the site with the URL http://localhost:3000/articles

