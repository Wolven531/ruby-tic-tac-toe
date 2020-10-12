# ruby-tic-tac-toe
The Game Tic-Tac-Toe in Ruby

## Requirements

* Node 8.16+ ([download](https://nodejs.org/en/download/))
* Ruby 2.5+ ([download](https://rubyinstaller.org/downloads/))
* Rails 6+ ([download](http://railsinstaller.org/en))
* Yarn 1.20+ ([download](https://classic.yarnpkg.com/en/docs/install))
* SQLLite3 (included w/ Rails installer)

## Running

Navigate to the `tictactoe` directory, then run `rails server`; the running app is available at [http://localhost:3000](http://localhost:3000)

## My Setup Process

1. Install Ruby and Ruby on Rails
    1. Get intro to Ruby via [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
    1. Start setting up Rails environment
        1. Initially installed [this Bitnami](https://bitnami.com/stack/ruby/installer) bundle, but it did not appear to help
        1. Switched to [RailsInstaller](http://railsinstaller.org/en), but it came w/ the wrong version of Ruby 🙄
        1. Ended up on the [RubyInstaller](https://rubyinstaller.org/downloads/) page, and got Ruby + Devkit 2.7.2
        1. Also installed [Yarn](https://classic.yarnpkg.com/en/docs/install), because Rails needs it
1. Create new Rails app w/ CLI
    1. `rails new tictactoe`
1. Boot Rails app w/ CLI
    1. `cd tictactoe; rails server`
1. Generate first controller
    1. `rails generate controller Welcome index`
1. [This page](http://ruby.bastardsbook.com/chapters/collections/) helped with some of the Ruby syntax used in the template
1. The initial Rails app structure is sufficient for this project, so I'm going to use the index page I just created to host the game. I've decided I'll use ERB and Ruby to help with templating, but for the actual page interaction, the app will use vanilla JavaScript (and the DOM).
1. Generate a model to track game history - `rails generate model GameHistory num_ties:numeric num_p0_wins:numeric num_p1_wins:numeric`
1. Run migration - `rails db:migrate`
