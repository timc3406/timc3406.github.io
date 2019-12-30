require 'test_helper'

class ContactmeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contactme_index_url
    assert_response :success
  end

end
