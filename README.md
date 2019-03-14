[![Build Status](https://travis-ci.org/AdrienFabre/bank_tech_test_ruby.svg?branch=master)](https://travis-ci.org/AdrienFabre/bank_tech_test_ruby)

[![Coverage Status](https://coveralls.io/repos/github/AdrienFabre/bank_tech_test_ruby/badge.svg?branch=master)](https://coveralls.io/github/AdrienFabre/bank_tech_test_ruby?branch=master)

[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/AdrienFabre/<bank_tech_test_ruby>)

# Bank tech test

This project is an example of a tech test I could be asked to complete. 

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### User Stories 

```
As a bank account user
So I can credit my account
I want to make a deposit on my account with a specific amount and date

As a bank account user
So I can debit my account
I want to make a withdrawal from my account with a specific amount and date

As a bank account user 
So I can see my balance
I want to print my account statement iwht the history of my credits and debits
```

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Tests

Run the test with 'rspec'

