require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "test user fixture exists" do
    assert_equal "test_user_email@gmail.com", users(:test_user).email
  end
end
