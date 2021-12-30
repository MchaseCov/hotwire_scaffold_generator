# Hotwire Scaffold Generator

This is a simple gem that builds off of the existing Rails generators to create Hotwire-ready applications! Currently, there are only two options.
You can generate either an entire scaffold (full MVC suite), or just the controller and views. 

Currently, the generator is designed to make use of Turbo Stream over client request formats. This means that these generators do not involve the setup for a model to be streamed over websocket, but rather respond with `.turbo_stream.erb` format responses to make use of Turbo Stream. 

I would like to add a scaffold generator that deals with Broadcast as opposed to Client so you have the option, but I need to do more research on that topic. This is my first gem and first time creating Rails generators.

## Demo Video

![A demo gif of what is generated](https://i.imgur.com/ALh6UUC.gif")


Here is a quick demo of what you will get out of the box after generating with this gem.
It is a functional yet simple SPA style combination of Turbo Frames and Streams to build on top of.
For an MP4 format (higher quality, more FPS, check out https://i.imgur.com/fHA8bFZ.mp4)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hotwire_scaffold_generator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hotwire_scaffold_generator

## Usage

After adding the gem to your application, you can now generate the files using `rails g hotwire_scaffold:client` for the full scaffold, or `rails g hotwire_scaffold:client_controller` to skip creating the model and migration.

Just like the Rails base generators, if you supply your model's attributes (even with the controller generator) it will automatically include them in the `def foo_params` method of your controller and list them in your view files in the `_partial.html.erb` view. 

## Arguments

#### --no-stimulus
In addition to the baseline Rails arguments, you can use `--no-stimulus` to disable the generation of the form reset Stimulus controller that is included. I include this as it is is needed to polish the submission form when using Hotwire, else your forms will not clear out after submission. However you may prefer to have an agnostic approach where you have one form reset controller for all of your methods rather than repeating it multiple times.

I chose to name it after your model, rather than name it a generic name, so that it would not overwrite or conflict any existing controllers you may have.

#### --jbuilder
the Jbuilder argument is false by default

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hotwire_scaffold_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/hotwire_scaffold_generator/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HotwireScaffoldGenerator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hotwire_scaffold_generator/blob/master/CODE_OF_CONDUCT.md).
