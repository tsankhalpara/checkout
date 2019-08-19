## Vinterior Coding Test

### The Task

The test should take around 3 hours but is not strictly timed.
Our client is an online marketplace, here is a sample of some of the products available on our site:
```
Product code  | Name                   | Price
----------------------------------------------------------
001           | Very Cheap Chair       | £9.25
002           | Little table           | £45.00
003           | Funky light            | £19.95
```
Our marketing team want to offer promotions as an incentive for our customers to purchase these items.
If you spend over £60, then you get 10% off of your purchase. If you buy 2 or more very cheap chairs then the price drops to £8.50.

Our check-out can scan items in any order, and because our promotions will change, it needs to be flexible regarding our promotional rules.

The interface to our checkout looks like this (shown in Ruby):
```
co = Checkout​.new​(promotional_rules)
co​.scan​(item)
co​.scan​(item)
price = co​.total
```
Implement a checkout system that fulfills these requirements. Do this outside of any frameworks. You should use TDD.
Please use git and commit regularly so we can see your thought process. We will review the code and discuss your approach when you have finished.
```
Test data
---------
Basket: 001,002,003
Total price expected: £66.78

Basket: 001,003,001
Total price expected: £36.95

Basket: 001,002,001,003
Total price expected: £73.76
```

### How to run

- Clone this repository.
- Change directory to this local repository.
- In terminal run:
  ```
  bundle install
  irb
  require './lib/checkout.rb'
  co = Checkout.new(PromotionalRules.new)
  co.scan(item_product_code)
  co.total
  exit
  ```


### How to test

- Run ``` rspec ```
