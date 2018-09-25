require 'rails_helper'

RSpec.describe User, type: :model do
  it "should validate name" do
      cat = Cat.create
      expect(cat.errors[:name]).to_not be_empty
    end
end
