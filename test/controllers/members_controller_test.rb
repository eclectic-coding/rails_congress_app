require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  fixtures :members

  def setup
    @base_title = 'Your Congress'
  end

  test 'should get members index at root path' do
    get root_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test 'should get show' do
    member = members(:pete)
    get member_url(member)
    assert_response :success
    assert_select 'title', "Member Details | #{@base_title}"
  end

end
