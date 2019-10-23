# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Final Product

### Index / Products Page
!["Index Page"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/index.png?raw=true)
### Categories Page
!["Index Page"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/index.png?raw=true)
### Admin Dashboard
![" Empty tweet error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/empty-tweet-error.png?raw=true)
### Admin Categories
!["Content max length error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/content-max-length-error.png?raw=true)
### Admin Products
!["Mobile version"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/mobile-version.png?raw=true)
### About
![" Empty tweet error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/empty-tweet-error.png?raw=true)
### Cart
!["Mobile version"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/mobile-version.png?raw=true)
### Empty cart
!["Content max length error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/content-max-length-error.png?raw=true)
### Payment
!["Content max length error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/content-max-length-error.png?raw=true)
### Order
!["Content max length error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/content-max-length-error.png?raw=true)
### Login
!["Content max length error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/content-max-length-error.png?raw=true)
### Register
!["Content max length error"](https://github.com/CamilaRivera/tweeter-/blob/master/docs/content-max-length-error.png?raw=true)

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
