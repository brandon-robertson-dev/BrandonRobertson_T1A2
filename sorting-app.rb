# requires colorize gem to add some flair to the app
require 'tty-prompt'
require 'lolize'

# requires the methods file to start the rest of the app
require_relative './src/codecopy.rb'
require_relative './src/classes.rb'
require_relative './src/text.rb'

# This is just the welcome to the app
colorizer = Lolize::Colorizer.new
colorizer.write "#{AppText.title}"
prompt = TTY::Prompt.new
prompt.keypress(AppText.any_key)
clear
user_choice