require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  fixtures :members

  def setup
    @member = members(:pete)
  end

  test 'should get members index at root path' do
    get root_url
    assert_response :success
  end

  test 'should get show' do
    member = members(:pete)
    get member_url(member)
    assert_response :success
  end

end
