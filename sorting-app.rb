# Requires lolize and tty-prompt gem to add some flair to the welcome part of the app
require 'tty-prompt'
require 'lolize'

# Requires the code/classes/text file to start the rest of the app
require_relative './src/code.rb'
require_relative './src/classes.rb'
require_relative './src/text.rb'

# This is just the welcome to the app then it calls the method to start the app
colorizer = Lolize::Colorizer.new
colorizer.write "#{AppText.title}"
prompt = TTY::Prompt.new
prompt.keypress(AppText.any_key)
clear
user_choice