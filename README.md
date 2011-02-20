# dm-bug-report

This repository is a template for creating standalone scripts which
reproduce bugs found in DataMapper.

Feel free to add/remove any dependencies from the `Gemfile`, and add your
buggy code to `test.rb`.

## Usage

Install DataMapper dependencies:

    $ bundle install

Install DataMapper edge dependencies:

    $ DM_EDGE=true bundle install

Install a specific DataMapper Adapter:

    $ DM_ADAPTER=mysql bundle install

Run the test script.

    $ bundle exec ruby test.rb

