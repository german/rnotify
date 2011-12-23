This small gem is supposed to be used on Ubuntu only (for now). It's actually work in progress. rnotify displays certain messages in NotifyOSD so you shouldn't distract to see what's going on in the console:

* Rails.logger messages (ones with severity >= WARN level)

* Results of running rspec/cucumber/test::unit test suits

Screenshot:

![rnotify screenshot](http://germaninthetown.com/rnotify_screenshot.png)

In order to use it you need to make sure you have a 'notify-bin' package installed:

```sh
sudo apt-get install libnotify-bin
```

then just add this line to your Gemfile:

```ruby
gem 'rnotify'
```

and run

```sh
bundle install
```

TODO:

* messages merging
* more icons

Copyright © 2011 Dmitrii Samoilov, released under the MIT license
