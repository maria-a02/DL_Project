# **About this project**
It's very common to use search platforms to find a product, a market nowadays. But also, some types of markets offering products, for example, fairs or "ferias libres" and their information about their location or timings is not sorted clearly or available for everyone. The purpose of this project is to build an application gathering and showing information about markets/fairs from different communes in Santiago, Chile, and sort them clearly for people looking for "ferias libres" in Santiago. Users will be able to leave their comments about these fairs.

# **Trello Board**
https://trello.com/b/oSNl58Oi/laferiapp

# **Gemset recommended**
Ruby 2.7.3 with Rails 5.2.6

# **Gems required for this project**
```
# Use bootstrap and jquery for styling
gem 'bootstrap', '~> 4.6.0'
gem 'jquery-rails'
# Use devise for authentication
gem 'devise'
# Use activeadmin and cancancan to admin user resources
gem "activeadmin", "~> 2.9"
gem 'cancancan'
# Use chartkick and groupdate to add a simple dashboard
gem 'chartkick'
gem 'groupdate'
# Use omniauth to login with Github credentials
gem 'omniauth-github', github: 'omniauth/omniauth-github', branch: 'master'
gem 'omniauth-rails_csrf_protection'
```

# **Entity Relationship Diagram**
Please note that the models could be modified in the future.

![ERD](https://user-images.githubusercontent.com/83678807/145938202-6aac025f-a685-48cf-9af2-42a31280d89f.jpg)

# **Register new user**
http://localhost:3000/users/sign_up

# **Login**
http://localhost:3000/users/sign_in

# **Login with GitHub**
You can also login with your GitHub credentials.

![image](https://user-images.githubusercontent.com/83678807/145740559-18f6df6f-26a7-4676-9ce0-b996ba563108.png)

![image](https://user-images.githubusercontent.com/83678807/145740661-bf2d68c3-cdc9-48a6-aa57-3faba11a185f.png)


# **Admin dashboard**
http://localhost:3000/admin/login
```
Email: admin@example.com
Password: password
```
