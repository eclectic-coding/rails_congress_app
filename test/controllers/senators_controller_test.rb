require 'test_helper'

class SenatorsControllerTest < ActionDispatch::IntegrationTest

  test 'should get index' do
    get senators_url
    assert_response :success
  end

  test 'should get show' do
    @senator = members(:pete)
    # get senator_url(@senator[:member_id])
    assert_response :success
  end

end
