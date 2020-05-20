require 'test_helper'

class SenatorsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @senator = members(:pete)
  end

  test 'should get index' do
    get senators_url
    assert_response :success
  end

  test 'should get show' do
    get senator_path(@senator[:member_id])
    assert_response :success
  end

end
