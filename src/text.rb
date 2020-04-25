module AppText

require 'colorize'
require 'rasskey'
require 'tty-box'

require_relative './classes.rb'
require_relative './code.rb'

module_function

# 40 lines across

def title
puts "
* * * * * * * * * * * * * * * * * * * *
*                                     *
*                                     *
*            W E L C O M E            *
*                                     *
*                                     *
* * * * * * * * * * * * * * * * * * * *
"
end

def any_key
puts "
Press any key to continue...
".yellow
end

def user_prompt
puts "
What kind of list would you like to make today?
"
end

def error_text 
print "
Sorry, That was the wrong input
"
end

def add
puts "
What would you like to add to your #{list_name.name} List?
"
end

def bucker_prio
puts "
How important is #{item} for you to complete?
"
end

def check
puts "
Here is what is currently in your #{list_name.name} list:
"
end

def sort_bucket
puts "
The Bucket list is sorted on entry
".red
end

def sort
puts "
How would you like to sort your #{list_name.name} list?
"
end

def remove_text_1
puts "
Here is what is currently in your #{list_name.name} list:
"
end

def remove_text_2
puts "
What would you like to remove from your list?
"
end

def no_list
puts "
That isn't on your list.
"
end

def list_choices
puts "
What would you like to do to your #{list_name.name} List?
"
end

def thank_you
puts "
Thanks for using Brandons List Maker/Sorter App
"
end

def exit
puts "
Thank you, Good Bye
"
end

end