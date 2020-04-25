# Wrong input error for error handling
class WrongInputError < StandardError
end

# List class as all lists have a name and a list
class List

    attr_reader :name
	attr_accessor :list

    def initialize(name, list)
        @name = name
        @list = []
    end

end

# Shopping list provides the name for a shopping list and inherits the array from the superclass
class ShoppingList < List

    def initialize
        super("Shopping", list)
    end

end

# Bucket list provides its own list and name as it uses a hash with arrays in it
class BucketList < List

    def initialize
        #super("Bucket", list)
        @name = "Bucket"
        @list = {"VERY HIGH" => [],"HIGH" => [],"MEDIUM" => [],"LOW" => [],"VERY LOW" => []}
    end

end

# ToDo list provides the name for a todo list and inherits the array from the superclass
class ToDoList < List

    def initialize
        super("ToDo", list)
    end

end