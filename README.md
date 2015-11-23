# Photish

Photish is a simple, convention based (but configurable) static photo site
generator. Photish allows you to order and group your photo collections by
folder. Metadata can be written along side the photo in a YAML file with the
same name as the photo.

Photish will crawl through your directory of photos and metadata, and render
the information in your website templates. It will also read your configuration
and automatically convert your images to your configured size, dimensions,
colourscheme, etc. Using this information, Photish creates a complete static
website that can be hosted on an NGINX, Apache web server, or even Github
pages site.

## Photish Concepts

Photish turns this:

    Photos
    ├── Big Dogs
    │   ├── Tired Dogs.jpg
    │   └── Winking Dog.jpg
    └── Small Dogs
        ├── Fluffy Dogs
        │   ├── Exhausted Dogs.jpg
        │   ├── Fluffy Dog.jpg
        │   ├── Fluffy Dog.yml
        └── Squishy Dogs
            ├── Big Ear Dog.jpg
            ├── Big Ear Dog.yml
            └── Sleepy Dog.jpg

Into this:

    website
    ├── index.html
    ├── big-dogs
    │   ├── index.html
    │   ├── tired-dogs
    │   │   ├── images
    │   │   │   ├── tired-dogs-low.jpg
    │   │   │   └── tired-dogs-original.jpg
    │   │   └── index.html
    │   └── winking-dog
    │       ├── images
    │       │   ├── winking-dog-low.jpg
    │       │   └── winking-dog-original.jpg
    │       └── index.html
    └── small-dogs
        ├── fluffy-dogs
        │   ├── exhausted-dogs
        │   │   ├── images
        │   │   │   ├── exhausted-dogs-low.jpg
        │   │   │   └── exhausted-dogs-original.jpg
        │   │   └── index.html
        │   ├── fluffy-dog
        │   │   ├── images
        │   │   │   ├── fluffy-dog-low.jpg
        │   │   │   └── fluffy-dog-original.jpg
        │   │   └── index.html
        │   ├── index.html
        ├── index.html
        └── squishy-dogs
            ├── big-ear-dog
            │   ├── images
            │   │   ├── big-ear-dog-low.jpg
            │   │   └── big-ear-dog-original.jpg
            │   └── index.html
            ├── index.html
            └── sleepy-dog
                ├── images
                │   ├── sleepy-dog-low.jpg
                │   └── sleepy-dog-original.jpg
                └── index.html

A breakdown of the before and after is as follows:

1. For the **Collection** of photos in "Photos" an _index.html_ was created
1. For each **Album** (that is a folder in the "Photos" collection), an
   _index.html_ was created in a slugified sub folder
1. For each **Photo** (an image file in the album), another _index.html_ was
   created in a slugified sub folder named after the original photo
1. For each of these Photos, a version of the **Image** was made in both "low"
   and "original" quality in a sub folder called _images_

### Collection

TODO: Text here

### Albums

TODO: Text here

### Photos

TODO: Text here

### Images

TODO: Text here

## Installation

Install the gem locally by running:

    $ gem install photish

Alternatively, use [Bundler](http://bundler.io/). Create a folder for your
photo site so you can track the version of Photish you are building with:

    $ mkdir my_new_photo_site
    $ cd my_new_photo_site
    $ bundle init
    $ echo 'gem "photish"' >> Gemfile
    $ bundle install

## Usage

Once you have photish installed. Get started with the following commands:

### Initialize

TODO: Text here

### Generate

TODO: Text here

### Host

TODO: Text here

### Customizing Templates

TODO: Text here

## Development

If you would like to contribute to Photish by creating a new feature or fixing
bugs, you are more then welcome too!

To develop:

    $ git clone git@github.com:henrylawson/photish.git
    $ cd photish
    $ ./bin/setup     # installs dependencies
    $ rake            # runs the tests
    $ vim             # open up the project and begin contributing
    $ ./bin/console   # for an interactive prompt

To release:

    $ git add -p && git commit -m 'Final commit'    # finish up changes
    $ rake                                          # ensure all tests pass
    $ vim lib/photish/version.rb                    # update version
    $ rake release                                  # release to rubygems

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/henrylawson/photish. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

