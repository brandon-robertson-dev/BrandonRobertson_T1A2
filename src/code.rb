require 'tty-prompt'

# I set up a clear function so I don't have to keep typing it out, I really like this one
def clear
    system('clear')
end

# The user input lets the user pick what kind of list
# they would like to create and passes it to the list creation method
def user_choice
    prompt = TTY::Prompt.new
    user_input = prompt.select(AppText.user_prompt) do |menu|
        menu.choice "Shopping List", -> { "shoppinglist" }
        menu.choice "Bucket List", -> { "bucketlist" }
        menu.choice "ToDo List", -> { "todolist" }
    end
    clear
    list_creation(user_input)
end

# The list creation method takes the user input and selects which list class to create to then pass onto the list choices
# It will raise an error when you type anything other than one of the list choices
def list_creation(user_input)
        case user_input
        when "shoppinglist"
            my_shopping_list = ShoppingList.new
            list_choices(my_shopping_list)
        when "bucketlist"
            my_bucket_list = BucketList.new
            list_choices(my_bucket_list)
        when "todolist"
            my_todo_list = ToDoList.new
            list_choices(my_todo_list)
        end
end

# Add to list function adds to the list, the ToDo and Shopping list are practically the same as they are just arrays
# the Bucket list is a Hash with arrays so it required different code
def add_to_list(list_name)
    AppText.add
    item = gets.chomp.downcase
    case list_name.name
    when "Bucket"
        prompt = TTY::Prompt.new
        importance = prompt.select(AppText.bucket_prio) do |menu|
            menu.choice "Very High", -> { "VERY HIGH" }
            menu.choice "High", -> { "HIGH" }
            menu.choice "Medium", -> { "MEDIUM" }
            menu.choice "Low", -> { "LOW" }
            menu.choice "Very Low", -> { "VERY LOW"}
        end
        list_name.list[importance] << "- #{item}"
    else
        list_name.list << "#{item}"
    end
    clear
    check_list(list_name)
end

# The check list method prints out what is in the list you have created
def check_list(list_name)
    AppText.here
    list_name.list.each { |x| puts x }
    prompt = TTY::Prompt.new
    prompt.keypress(AppText.any_key)
    clear
    list_choices(list_name)
end

# The export method sends the list to a text file, for the todo list it adds numbers in order of what to do
# the bucket list will put your most important tasks at the top
def export_list(list_name)
    if list_name.name == "Bucket"
        File.open("#{list_name.name}_List.txt", 'w') do |file|
            file.puts "This is your Bucket list in order from Most important to Least important."
            list_name.list.each do |key|
            file.puts key
            file.puts " "
            end
        end
    elsif list_name.name == "Shopping"
        File.open("#{list_name.name}_List.txt", 'w') do |file| 
            file.puts "This is your Shopping list"
            list_name.list.each do |x|
            file.puts "- #{x}"
            end
        end
    elsif list_name.name == "ToDo"
        File.open("#{list_name.name}_List.txt", 'w') do |file| 
            file.puts "This is your ToDo list"
            item_num = 1
            list_name.list.each do |x|
            file.puts "#{item_num}. #{x}"
            item_num += 1
            end
        end
    end
    clear
    thank_you
end

# The sort list method will sort the list by alphabetical, reverse alphabetical, length, reverse length?
def sort_list(list_name)
    case list_name.name
    when "Bucket"
        AppText.sort_bucket
        list_choices(list_name)
    else
        prompt = TTY::Prompt.new
        user_input = prompt.select(AppText.sort) do |menu|
            menu.choice "Alphabetical", -> { "alpha" }
            menu.choice "Reverse Alphabetical", -> { "revalpha" }
            menu.choice "Shortest to Longest item length", -> { "shorttolong" }
            menu.choice "Longest to Shortest item length", -> { "longtoshort" }
            menu.choice "Go back", -> { "back" }
        end
        case user_input
        when "alpha"
            list_name.list.sort!
        when "revalpha"
            list_name.list.sort!.reverse!
        when "shorttolong"
            list_name.list.sort_by!{|x| x.length}
        when "longtoshort"
            list_name.list.sort_by!{|x| x.length}.reverse!
        when "back"
            clear
            list_choices(list_name)
        end
    end
    clear
    check_list(list_name)
end

# This removes a string from the list
def remove_list(list_name)
    if list_name.list.count == 0 or list_name.list.values == [[], [], [], [], []]
        clear
        puts "Your list is currently empty, there is nothing to remove"
        list_choices(list_name)
    else
        AppText.here
        list_name.list.each { |x| puts x }
        AppText.remove
        answer = gets.chomp.downcase
        case list_name.name
        when "Bucket"
            if list_name.list.values.include?(["- #{answer}"])
                list_name.list.keys.each { |x| list_name.list[x].delete("- #{answer}") }
            else
                clear
                AppText.no_list
                remove_list(list_name)
            end
        else
            if list_name.list.include?("#{answer}")
                list_name.list.delete("#{answer}")
            else
                AppText.no_list
                remove_list(list_name)
            end
        end
    end
    clear
    check_list(list_name)
end

# List choices lets you choose what you would like to do with your created list
def list_choices(list_name)
    prompt = TTY::Prompt.new
    user_input = prompt.select(AppText.list_choices) do |menu|
        menu.choice "Add to list", -> { "addtolist" }
        menu.choice "Check list", -> { "checklist" }
        menu.choice "Export list", -> { "exportlist" }
        menu.choice "Sort list", -> { "sortlist" }
        menu.choice "Remove from list", -> { "removelist" }
        menu.choice "Change list type", -> { "back" }
    end
    case user_input
    when "addtolist"
        clear
        add_to_list(list_name)
    when "checklist"
        clear
        check_list(list_name)
    when "exportlist"
        clear
        export_list(list_name)
    when "sortlist"
        clear
        sort_list(list_name)
    when "removelist"
        clear
        remove_list(list_name)
    when "back"
        clear
        user_choice
    end
end

# This is at the end of program, it lets you repeat everything to make a new list or exit out of the app
def thank_you
    AppText.thank_you
    prompt = TTY::Prompt.new
    answer = prompt.select("Would you like to make another list?".magenta) do |menu|
        menu.choice "Yes please, let me make another list", -> { "yes" }
        menu.choice "No thank you, I've had enough lists for now", -> { "exit" }
    end
    case answer
    when "yes"
        clear
        user_choice
    when "exit" 
        colorizer = Lolize::Colorizer.new
        colorizer.write "#{AppText.exit}"
        sleep(5)
        exit
    end
end
