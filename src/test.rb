require_relative './code.rb'
require_relative './classes.rb'
require_relative './text.rb'

require 'rspec'

describe "List creation creates lists" do
	it "should create the selected list" do
		expect(list_creation("shoppinglist")).to eq("my_shopping_list")
	end
end

describe "Add to list adds items to list" do
    it "should add an item to the list" do
        expect(add_to_list("shoppinglist")).to eq([bread])
    end
end

describe "Check list shows the user the list" do
	it "should show the user the list they have created" do
		expect(check_list("shoppinglist")).to eq("bread")
	end
end