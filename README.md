joinasquad.com
==============

[![Build Status](https://secure.travis-ci.org/cairo140/joinasquad.com.png)](http://travis-ci.org/cairo140/joinasquad.com)

[joinasquad.com](http://www.joinasquad.com/) is a service ad-hoc online matchmaking---a hookup site for online games. Visit the site for more.

How to contribute
-----------------

Fork the code at [https://github.com/cairo140/joinasquad.com](https://github.com/cairo140/joinasquad.com) and make whatever enhancements you see fit. If you have any questions, feel free to send me an email or private message through [my github page](https://github.com/cairo140), and I'll be happy to help you through.

Getting the development environment set up
------------------------------------------

I used Ubuntu 11.04 (32-bit) running as a virtual machine on a Windows 7 (64-bit) host as my primary development environment, although the intention is for the application to run on any Linux or OSX box. If you run into compatibility issues, please [file an issue](https://github.com/cairo140/joinasquad.com/issues/new).

I have postgresql 8.4 running locally with ident authentication on my development machine. The intention is that the site would also work with MySQL or sqlite as well, but I make no particular effort to that end.

The ruby environment is rvm 1.10 running ruby 1.9.3-p0. You're going to need a reasonably recent version of the bundler gem installed as well.

Once all the prerequisites are set up, the application should work out of the box. Install the bundled gems with `bundle install`, run the migrations with `bundle exec rake db:create` then `bundle exec rake db:migrate` (you may be able to get away with `rake db:create` then `rake db:migrate` depending on your installed versions of rake), and start the server with `bundle exec passenger start`.
