require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = 'Your Congress'
  end

  test 'should get home' do
    get static_pages_home_path
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

end

