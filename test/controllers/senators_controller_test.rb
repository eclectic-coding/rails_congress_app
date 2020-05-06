require 'test_helper'

class SenatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get senators_index_url
    assert_response :success
  end

  test "should get show" do
    get senators_show_url
    assert_response :success
  end

end
