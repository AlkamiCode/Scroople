require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "test user has correct email and password" do
    # test_user attributes are setup in users.yml
    assert_equal "test_user_email@gmail.com", users(:test_user).email
    assert_equal "test_user_password", users(:test_user).encrypted_password
  end
end
