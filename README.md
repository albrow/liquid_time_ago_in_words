Liquid time_ago_in_words
========================

(v 1.0.1)

A rails-style time_ago_in_words filter for the [liquid templating language](http://liquidmarkup.org/).
Intended for use for people who use liquid without rails (e.g. a Jekyll or Octopress blog).
If you're using liquid with rails, you don't need this!
<br/>
<br/>
The code is based on [Klaus Byskov Hoffmann's language-agnostic version](http://goo.gl/GUVDn).

## Installation

In your plugins directory:

```bash
curl -L -O https://github.com/albrow/liquid_time_ago_in_words/raw/master/time_ago_in_words.rb
```
or 
```bash
wget https://github.com/albrow/liquid_time_ago_in_words/raw/master/time_ago_in_words.rb
```
Don't forget to restart your server!

## Usage

It works like any other filter:

```liquid
{{ page.date | time_ago_in_words }}
```

The output looks like ```14 minutes ago``` or ```about a day ago``` or etc.

## Adding Javascript Functionality

By default, the time ago will only update everytime you run ```rake generate```. If you don't regenerate your site often,
this could result in the time ago becoming outdated. To fix that problem, I've included a small snippet of javascript that
will update the time ago client-side. It has no dependencies, but it's not guaranteed to work in older browsers.

To add this functionality to your site, simply pull the time_ago.js file (or just copy and paste it) and add it to
your javascript directory. Don't forget to add ```<script src="{{ root_url }}/javascripts/time_ago.js"></script>```
somewhere.
