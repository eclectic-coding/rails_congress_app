require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = 'Your Congress'
  end

  test 'should get home' do
    get root_path
    assert_response :success
  end

end

