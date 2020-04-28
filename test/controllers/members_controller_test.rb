require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = 'Your Congress'
  end

  test 'should get members index at root path' do
    get root_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test 'should get show' do
    get members_show_url
    assert_response :success
  end

end
