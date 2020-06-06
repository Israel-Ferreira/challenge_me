require 'rails_helper'

RSpec.describe Category, type: :model do
  it "O titulo da categoria não deve ser nulo" do 
    category = build(:category, title: nil)
    expect(category).not_to be_valid
  end
end
