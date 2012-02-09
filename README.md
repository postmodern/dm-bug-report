# dm-bug-report

This repository is a template for creating standalone scripts which
reproduce bugs found in DataMapper.

Feel free to add/remove any dependencies from the `Gemfile`, and add your
buggy code to `test.rb`.

## Usage

Install DataMapper dependencies:

    $ bundle install

Install DataMapper Edge dependencies:

    $ DM_EDGE=true bundle install

Use existing DataMapper repositories from a root directory:

    $ DM_ROOT=~/src/dm/ bundle install

Install a specific DataMapper Adapter:

    $ ADAPTER=mysql bundle install

Run the test script.

    $ ./bug.rb

