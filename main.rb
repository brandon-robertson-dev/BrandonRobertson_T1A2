# requires colorize gem to add some flair to the app
require 'colorize'
require 'tty-prompt'

# requires the methods file to start the rest of the app
require_relative './src/methodstestcopy.rb'
require_relative './src/classes.rb'
require_relative './src/text.rb'

# This is just the welcome to the app
AppText.title
prompt = TTY::Prompt.new
prompt.keypress(AppText.any_key)
clear
user_choice
