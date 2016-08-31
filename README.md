# Colorizr
v. colorizr-0.0.2

# About
Colorizr is a Ruby Gem that formats the colors of the strings

# How to use

To get a list with the available colors in the gem run command:
$ p String.colors

To see samples of the colors run the command:
$ String.sample_colors

The gem is then used by calling the color methods on a string :
& puts "test string".blue
=> returns "test string" formated in blue color

# Installation
To generate the Gem, build it using gemspec
& gem build colorizr.gemspec

Then install the gem:
$gem install colorizr-0.0.2.gem

To use the Gem in an application:

require 'colorizr'
