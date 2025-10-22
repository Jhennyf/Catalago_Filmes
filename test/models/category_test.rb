# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    category = Category.new(name: "Suspense")
    assert category.valid?
    assert category.save!
  end

  test "should not be valid without name" do
    category = Category.new
    assert_not category.valid?
    assert_includes category.errors[:name], "can't be blank"
  end

  test "should create category from fixture" do
    drama = categories(:drama)
    assert drama.valid?
    assert_equal "Drama", drama.name
  end
end
