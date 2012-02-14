This small gem is supposed to be used on Ubuntu only (for now). It's actually work in progress. rnotify displays certain messages in NotifyOSD so you shouldn't distract to see what's going on in the console:

* Rails.logger messages (ones with severity >= WARN level)

* Results of running rspec/cucumber/test::unit test suits

h3. 2 possible notifications styles 

First - new Ubuntu style:

![rnotify screenshot](http://germaninthetown.com/rnotify_screenshot.png)

In order to use it you just need to make sure you have a 'libnotify-bin' package installed:

```sh
sudo apt-get install libnotify-bin
```

Second - old Ubuntu style (preferred, since it supports stacking of messages):

![rnotify screenshot with notification-daemon](http://germaninthetown.com/rnotify_screenshot2.png)

if you already have notify-osd installed:

```sh
$ sudo apt-get install notification-daemon
$ sudo mv /usr/lib/notify-osd/notify-osd /usr/lib/notify-osd/notify-osd-original
$ sudo killall notify-osd
$ sudo ln -s /usr/lib/notification-daemon/notification-daemon /usr/lib/notify-osd/notify-osd
```

otherwise:

```sh
$ sudo apt-get install notification-daemon
$ sudo ln -s /usr/lib/notification-daemon/notification-daemon /usr/lib/notify-osd/notify-osd
```

Then you could change the look-and-feel of notification window:

```sh
$ notification-properties
```

![customizing old notifications style and position](http://germaninthetown.com/rnotify_screenshot3.png)

h2. Installing 

then just add this line to your Gemfile:

```ruby
gem 'rnotify'
```

and run

```sh
bundle install
```

TODO:

* messages merging [done - only possible with old ubuntu *notification-daemon* library]
* more icons

Copyright © 2011 Dmitrii Samoilov, released under the MIT license
