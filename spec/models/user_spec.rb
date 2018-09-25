require 'rails_helper'

RSpec.describe User, type: :model do
  it "can an user be created" do
      user = User.create(email: 'test@example.com', password: 'testpassword')
      expect(user.save).to be true
    end

  it "requires an email for an user" do
    user = User.create(password: 'testpassword')
    expect(user.errors[:email]).to_not be_blank
  end
end
