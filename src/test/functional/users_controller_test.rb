require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end
end
