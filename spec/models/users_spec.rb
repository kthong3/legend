require 'rails_helper'

describe User do
  let(:user) { User.new("jon", "snow", "iknownothing@email.com", "password")}


  context "#initialize" do
    it "creates a User object" do
      expect(user).to be_an_instance_of User
    end

    it "is valid with valid attributes"
    it "is not valid without a first name"
    it "is not valid without a last name"
    it "is not valid without an email address"
    it "is not valid without a password"
  end

end