require "rails_helper"

RSpec.describe User, type: :model do
  context "is a valid user" do
    let!(:user) { User.new(email: "test_user@gmail.com", password: "test_password") }

    it "is valid" do
      expect(user).to be_valid
    end
  end

  context "an invalid user" do
    let!(:user) { User.new(email: "test_user@gmail.com", password: "test_password") }

    it "is invalid without a email" do
      user.email = nil
      expect(user).to_not be_valid
    end

    it "is invalid without a password" do
      user.password = nil
      expect(user).to_not be_valid
    end

    it "is invalid if the password is too short" do
      user.password = "r"
      expect(user).to_not be_valid
    end

    it "is invalid if the password is too long" do
      user.password = "r" * 26
      expect(user).to_not be_valid
    end

    it "is invalid if the email is invalid" do
      user.email = "#$!!??gmail....com"
      expect(user).to_not be_valid

      user.email = "$%#&&#^@@gmailc.om"
      expect(user).to_not be_valid

      user.email = "$%#&&#^^hello#))((^^%$helloe@gmailc.om"
      expect(user).to_not be_valid
    end
  end
end
