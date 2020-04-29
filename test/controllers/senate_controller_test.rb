require 'test_helper'

class SenateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get senate_index_url
    assert_response :success
  end

end
