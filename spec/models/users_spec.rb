require 'rails_helper'

describe User do
  let(:user) { User.new(first_name: "jon", last_name: "snow", email: "iknownothing@email.com", password: "password")}

  describe "validations" do
    it "is valid with valid attributes" do
      user.valid?
      expect(user.errors).to be_empty
    end

    it "is not valid without a first name" do
      user.last_name = "snow"
      user.email = "iknownothing@email.com"
      user.password = "password"
      expect(user).to_not be_valid
    end

    it "is not valid without a last name" do
      user.first_name = "jon"
      user.email = "iknownothing@email.com"
      user.password = "password"
      expect(user).to_not be_valid
    end


    it "is not valid without an email address" do
      user.first_name = "jon"
      user.last_name = "snow"
      user.password = "password"
      expect(user).to_not be_valid
    end

    it "is not valid without a password"do
      user.first_name = "jon"
      user.last_name = "snow"
      user.email = "iknownothing@email.com"
      expect(user).to_not be_valid
    end

  end

end