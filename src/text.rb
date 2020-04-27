# This module lets me call the text whenever I need to put text within the app
module AppText

require 'colorize'

require_relative './classes.rb'
require_relative './code.rb'

module_function

# These are all the text files used throughout the app
def title 
"
              ▀█████████▄     ▄████████    ▄████████ ███▄▄▄▄   ████████▄   ▄██████▄  ███▄▄▄▄      ▄████████             
                ███    ███   ███    ███   ███    ███ ███▀▀▀██▄ ███   ▀███ ███    ███ ███▀▀▀██▄   ███    ███             
                ███    ███   ███    ███   ███    ███ ███   ███ ███    ███ ███    ███ ███   ███   ███    █▀              
               ▄███▄▄▄██▀   ▄███▄▄▄▄██▀   ███    ███ ███   ███ ███    ███ ███    ███ ███   ███   ███                    
              ▀▀███▀▀▀██▄  ▀▀███▀▀▀▀▀   ▀███████████ ███   ███ ███    ███ ███    ███ ███   ███ ▀███████████             
                ███    ██▄ ▀███████████   ███    ███ ███   ███ ███    ███ ███    ███ ███   ███          ███             
                ███    ███   ███    ███   ███    ███ ███   ███ ███   ▄███ ███    ███ ███   ███    ▄█    ███             
              ▄█████████▀    ███    ███   ███    █▀   ▀█   █▀  ████████▀   ▀██████▀   ▀█   █▀   ▄████████▀              
                             ███    ███                                                                                 
    ▄█        ▄█     ▄████████      ███            ▄▄▄▄███▄▄▄▄      ▄████████    ▄█   ▄█▄  ▄█  ███▄▄▄▄      ▄██████▄    
    ███       ███    ███    ███ ▀█████████▄      ▄██▀▀▀███▀▀▀██▄   ███    ███   ███ ▄███▀ ███  ███▀▀▀██▄   ███    ███   
    ███       ███▌   ███    █▀     ▀███▀▀██      ███   ███   ███   ███    ███   ███▐██▀   ███▌ ███   ███   ███    █▀    
    ███       ███▌   ███            ███   ▀      ███   ███   ███   ███    ███  ▄█████▀    ███▌ ███   ███  ▄███          
    ███       ███▌ ▀███████████     ███          ███   ███   ███ ▀███████████ ▀▀█████▄    ███▌ ███   ███ ▀▀███ ████▄    
    ███       ███           ███     ███          ███   ███   ███   ███    ███   ███▐██▄   ███  ███   ███   ███    ███   
    ███▌    ▄ ███     ▄█    ███     ███          ███   ███   ███   ███    ███   ███ ▀███▄ ███  ███   ███   ███    ███   
    █████▄▄██ █▀    ▄████████▀     ▄████▀         ▀█   ███   █▀    ███    █▀    ███   ▀█▀ █▀    ▀█   █▀    ████████▀    
    ▀                                                                           ▀                                       
                                               ▄████████ ███▄▄▄▄   ████████▄                                            
                                              ███    ███ ███▀▀▀██▄ ███   ▀███                                           
                                              ███    ███ ███   ███ ███    ███                                           
                                              ███    ███ ███   ███ ███    ███                                           
                                            ▀███████████ ███   ███ ███    ███                                           
                                              ███    ███ ███   ███ ███    ███                                           
                                              ███    ███ ███   ███ ███   ▄███                                           
                                              ███    █▀   ▀█   █▀  ████████▀                                            
                                                                                                        
  ▄████████  ▄██████▄     ▄████████      ███      ▄█  ███▄▄▄▄      ▄██████▄          ▄████████    ▄███████▄    ▄███████▄ 
  ███    ███ ███    ███   ███    ███ ▀█████████▄ ███  ███▀▀▀██▄   ███    ███        ███    ███   ███    ███   ███    ███ 
  ███    █▀  ███    ███   ███    ███    ▀███▀▀██ ███▌ ███   ███   ███    █▀         ███    ███   ███    ███   ███    ███ 
  ███        ███    ███  ▄███▄▄▄▄██▀     ███   ▀ ███▌ ███   ███  ▄███               ███    ███   ███    ███   ███    ███ 
▀███████████ ███    ███ ▀▀███▀▀▀▀▀       ███     ███▌ ███   ███ ▀▀███ ████▄       ▀███████████ ▀█████████▀  ▀█████████▀  
         ███ ███    ███ ▀███████████     ███     ███  ███   ███   ███    ███        ███    ███   ███          ███        
   ▄█    ███ ███    ███   ███    ███     ███     ███  ███   ███   ███    ███        ███    ███   ███          ███        
 ▄████████▀   ▀██████▀    ███    ███    ▄████▀   █▀    ▀█   █▀    ████████▀         ███    █▀   ▄████▀       ▄████▀      
                          ███    ███                                                                                     
"
end

def any_key
puts "
Press any key to continue...
".yellow
end

def empty_list
puts "
Your list is currently empty, there is nothing to remove
".red
end

def user_prompt
puts "
What kind of list would you like to make today?
".green
end

def error_text 
print "
Sorry, That was the wrong input
".red
end

def add
puts "
What would you like to add to your list?
".blue
end

def bucket_prio
puts "
How important is it for you to complete?
".magenta
end

def here
puts "
Here is what is currently in your list:
".light_blue
end

def sort_bucket
puts "
The Bucket list is sorted on entry
".red
end

def sort
puts "
How would you like to sort your list?
".light_green
end

def remove
puts "
What would you like to remove from your list?
".green
end

def no_list
puts "
That isn't on your list.
".red
end

def list_choices
puts "
What would you like to do to your list?
".light_yellow
end

def make_more
puts "
Would you like to make another list?
".magenta
end

def thank_you
puts "
Thanks for using Brandons List Maker/Sorter App
".light_yellow
end

def exit
"
                                                                                                                                                                
                                                                                                                                                                
TTTTTTTTTTTTTTTTTTTTTTThhhhhhh                                                kkkkkkkk                                                                          
T:::::::::::::::::::::Th:::::h                                                k::::::k                                                                          
T:::::::::::::::::::::Th:::::h                                                k::::::k                                                                          
T:::::TT:::::::TT:::::Th:::::h                                                k::::::k                                                                          
TTTTTT  T:::::T  TTTTTT h::::h hhhhh         aaaaaaaaaaaaa  nnnn  nnnnnnnn     k:::::k    kkkkkkk     yyyyyyy           yyyyyyy ooooooooooo   uuuuuu    uuuuuu  
        T:::::T         h::::hh:::::hhh      a::::::::::::a n:::nn::::::::nn   k:::::k   k:::::k       y:::::y         y:::::yoo:::::::::::oo u::::u    u::::u  
        T:::::T         h::::::::::::::hh    aaaaaaaaa:::::an::::::::::::::nn  k:::::k  k:::::k         y:::::y       y:::::yo:::::::::::::::ou::::u    u::::u  
        T:::::T         h:::::::hhh::::::h            a::::ann:::::::::::::::n k:::::k k:::::k           y:::::y     y:::::y o:::::ooooo:::::ou::::u    u::::u  
        T:::::T         h::::::h   h::::::h    aaaaaaa:::::a  n:::::nnnn:::::n k::::::k:::::k             y:::::y   y:::::y  o::::o     o::::ou::::u    u::::u  
        T:::::T         h:::::h     h:::::h  aa::::::::::::a  n::::n    n::::n k:::::::::::k               y:::::y y:::::y   o::::o     o::::ou::::u    u::::u  
        T:::::T         h:::::h     h:::::h a::::aaaa::::::a  n::::n    n::::n k:::::::::::k                y:::::y:::::y    o::::o     o::::ou::::u    u::::u  
        T:::::T         h:::::h     h:::::ha::::a    a:::::a  n::::n    n::::n k::::::k:::::k                y:::::::::y     o::::o     o::::ou:::::uuuu:::::u  
      TT:::::::TT       h:::::h     h:::::ha::::a    a:::::a  n::::n    n::::nk::::::k k:::::k                y:::::::y      o:::::ooooo:::::ou:::::::::::::::uu
      T:::::::::T       h:::::h     h:::::ha:::::aaaa::::::a  n::::n    n::::nk::::::k  k:::::k                y:::::y       o:::::::::::::::o u:::::::::::::::u
      T:::::::::T       h:::::h     h:::::h a::::::::::aa:::a n::::n    n::::nk::::::k   k:::::k              y:::::y         oo:::::::::::oo   uu::::::::uu:::u
      TTTTTTTTTTT       hhhhhhh     hhhhhhh  aaaaaaaaaa  aaaa nnnnnn    nnnnnnkkkkkkkk    kkkkkkk            y:::::y            ooooooooooo       uuuuuuuu  uuuu
                                                                                                            y:::::y                                             
                                                                                                           y:::::y                                              
                                                                                                          y:::::y                                               
                                                                                                         y:::::y                                                
                                                                                                        yyyyyyy                                                 
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                        dddddddd                                                                                
             GGGGGGGGGGGGG                                              d::::::d     BBBBBBBBBBBBBBBBB                                                          
          GGG::::::::::::G                                              d::::::d     B::::::::::::::::B                                                         
        GG:::::::::::::::G                                              d::::::d     B::::::BBBBBB:::::B                                                        
       G:::::GGGGGGGG::::G                                              d:::::d      BB:::::B     B:::::B                                                       
      G:::::G       GGGGGG   ooooooooooo      ooooooooooo       ddddddddd:::::d        B::::B     B:::::Byyyyyyy           yyyyyyy eeeeeeeeeeee                 
     G:::::G               oo:::::::::::oo  oo:::::::::::oo   dd::::::::::::::d        B::::B     B:::::B y:::::y         y:::::yee::::::::::::ee               
     G:::::G              o:::::::::::::::oo:::::::::::::::o d::::::::::::::::d        B::::BBBBBB:::::B   y:::::y       y:::::ye::::::eeeee:::::ee             
     G:::::G    GGGGGGGGGGo:::::ooooo:::::oo:::::ooooo:::::od:::::::ddddd:::::d        B:::::::::::::BB     y:::::y     y:::::ye::::::e     e:::::e             
     G:::::G    G::::::::Go::::o     o::::oo::::o     o::::od::::::d    d:::::d        B::::BBBBBB:::::B     y:::::y   y:::::y e:::::::eeeee::::::e             
     G:::::G    GGGGG::::Go::::o     o::::oo::::o     o::::od:::::d     d:::::d        B::::B     B:::::B     y:::::y y:::::y  e:::::::::::::::::e              
     G:::::G        G::::Go::::o     o::::oo::::o     o::::od:::::d     d:::::d        B::::B     B:::::B      y:::::y:::::y   e::::::eeeeeeeeeee               
      G:::::G       G::::Go::::o     o::::oo::::o     o::::od:::::d     d:::::d        B::::B     B:::::B       y:::::::::y    e:::::::e                        
       G:::::GGGGGGGG::::Go:::::ooooo:::::oo:::::ooooo:::::od::::::ddddd::::::dd     BB:::::BBBBBB::::::B        y:::::::y     e::::::::e                       
        GG:::::::::::::::Go:::::::::::::::oo:::::::::::::::o d:::::::::::::::::d     B:::::::::::::::::B          y:::::y       e::::::::eeeeeeee               
          GGG::::::GGG:::G oo:::::::::::oo  oo:::::::::::oo   d:::::::::ddd::::d     B::::::::::::::::B          y:::::y         ee:::::::::::::e               
             GGGGGG   GGGG   ooooooooooo      ooooooooooo      ddddddddd   ddddd     BBBBBBBBBBBBBBBBB          y:::::y            eeeeeeeeeeeeee               
                                                                                                               y:::::y                                          
                                                                                                              y:::::y                                           
                                                                                                             y:::::y                                            
                                                                                                            y:::::y                                             
                                                                                                           yyyyyyy                                              
                                                                                                                                                                
                                                                                                                                                                
"
end

end