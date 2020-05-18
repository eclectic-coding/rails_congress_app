require 'test_helper'

class RepresentativesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @representative = members(:pete)
  end
  test 'should get index' do
    get representatives_path
    assert_response :success
  end

  test 'should get show' do
    get representative_path(@representative)
    assert_response :success
  end

end
