Example API
-------------

[![Build Status](https://travis-ci.org/putneyj/devise-doorkeeper-cancan-api-example.svg?branch=master)](https://travis-ci.org/putneyj/devise-doorkeeper-cancan-api-example) [![Coverage Status](https://coveralls.io/repos/github/putneyj/devise-doorkeeper-cancan-api-example/badge.svg?branch=master)](https://coveralls.io/github/putneyj/devise-doorkeeper-cancan-api-example?branch=master) [![Dependency Status](https://gemnasium.com/badges/github.com/putneyj/devise-doorkeeper-cancan-api-example.svg)](https://gemnasium.com/github.com/putneyj/devise-doorkeeper-cancan-api-example)

# rails 4, rails-api, devise, doorkeeper, oauth, cancancan, rspec, puma, vcr, factory_girl, reqres_rspec, pg, dotenv, rack-cors, active_model_serializers, rubocop

Rails API with a nice User management
via `devise` gem, with both frontend forms and JSON access, and with a
token-based OAuth authentication via `doorkeeper`. Sample authorization is done
with `cancancan` and also is tested.

As a bonus all the functionality is covered by integration specs with `rspec`

Features:

* User Signup
* Restore password
* Modify own user profile
* User password-based authentication
* Client application authentication
* Access with OAuth access_token
* Generate new access_token via refresh_token
* Authorization
