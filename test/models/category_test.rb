require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
	# Runs before every test
	def setup
		@category = Category.new(name: "sports")
	end

	test "category should be valid" do
		assert @category.valid?
	end

	test "name shoud be present" do
		@category.name = " "
		assert_not @category.valid? # It should not accept it
	end

	test "name should be unique" do
		@category.save
		category_duplicated = Category.new(name: "sports")
		assert_not category_duplicated.valid?
	end

	test "name should not be too long" do
		@category.name = "a" * 26
		assert_not @category.valid?
	end

	test "name should not be too short" do
		@category.name = "a"
		assert_not @category.valid?

		@category.name = "aa"
		assert_not @category.valid?
	end
end