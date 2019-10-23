# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

### Index / Products Page
!["Index Page"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/index.png?raw=true)
### Categories
!["Categories"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/categories.png?raw=true)
### Admin Dashboard
!["Admin Dashboard"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/dashboard.png?raw=true)
### Admin Categories
!["Admin Categories"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/admincategories.png?raw=true)
### Admin Products
!["Admin Products"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/adminproducts.png?raw=true)
### About
!["About"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/about.png?raw=true)
### Cart
!["Cart"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/cart.png?raw=true)
### Empty cart
!["Empty cart"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/empty.png?raw=true)
### Payment
!["Payment"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/payment.png?raw=true)
### Order
!["Order"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/order.png?raw=true)
### Login
!["Login"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/login.png?raw=true)
### Register
!["Register"](https://github.com/CamilaRivera/Jungle-Rails/blob/master/docs/Signup.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Dev Dependencies

* Capybara
* Poltergeist
* Database Cleaner
