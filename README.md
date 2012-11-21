Liquid time_ago_in_words
========================

A rails-style time_ago_in_words filter for the [liquid templating language](http://liquidmarkup.org/).
Intended for use for people who use liquid without rails (e.g. a Jekyll or Octopress blog).
If you're using liquid with rails, you don't need this!
<br/>
<br/>
The code is based on [Klaus Byskov Hoffmann's language-agnostic version](http://goo.gl/GUVDn).

## Installation

In your plugins directory:

```bash
curl -L -O https://github.com/stephenalexbrowne/liquid_time_ago_in_words/raw/master/time_ago_in_words.rb
```
or 
```bash
wget https://github.com/stephenalexbrowne/liquid_time_ago_in_words/raw/master/time_ago_in_words.rb
```
Don't forget to restart your server!

## Usage

It works like any other filter:

```liquid
{{ page.date | time_ago_in_words }}
```

The output looks like ```14 minutes ago``` or ```about a day ago``` or etc.