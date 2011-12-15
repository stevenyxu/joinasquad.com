joinasquad.com
==============

[![Build Status](https://secure.travis-ci.org/cairo140/joinasquad.com.png)](http://travis-ci.org/cairo140/joinasquad.com)

[joinasquad.com](http://www.joinasquad.com/) is a service ad-hoc online matchmaking---a hookup site for online games. Visit the site for more.

How to contribute
-----------------

Fork the code at [https://github.com/cairo140/joinasquad.com](https://github.com/cairo140/joinasquad.com) and make whatever enhancements you see fit. If you have any questions, feel free to send me an email or private message through [my github page](https://github.com/cairo140), and I'll be happy to help you through.

Getting the development environment set up
------------------------------------------

My development environment:

* Ubuntu 11.04 (32-bit) via VirtualBox on Windows 7 (64-bit) host
* PostgreSQL 8.4
* rvm 1.10

How you might set your environment up:

    rvm install 1.9.3-p0
    git checkout git://github.com/cairo140/joinasquad.com.git
    cd joinasquad.com # should give you an rvm security prompt
    ruby --version # confirm this is 1.9.3-p0
    gem install bundler
    bundle install
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec passenger start # may take you through an installer

The intention is that, for as long as it is feasible, we make _joinasquad.com_ compatible with SQLite, MySQL, and PostgreSQL. The site runs with PostgreSQL by default, but you're free to use the other adapters. Substitute the final three steps above with these:

    DB=mysql bundle exec rake db:create
    DB=mysql bundle exec rake db:migrate
    DB=mysql bundle exec passenger start

Testing
-------

    bundle exec rake

Did I make a mistake in the README?
-----------------------------------

If I made a mistake in the README, feel free to [fork the project](https://github.com/cairo140/joinasquad.com/fork_select). From there, you can edit your **README.md** straight through your browser and create a pull request with your changes.

Contribution guidelines
-----------------------

Patches are welcome.

* The development head is on master for now, so feel free to develop from there.
* If you need a hand at any point in the contribution process (where to put tests, how to structure a fix, etc.), let me know, and I can help.
* Pull requests should pass tests on all three `DB` environment settings.
* Thank you!
