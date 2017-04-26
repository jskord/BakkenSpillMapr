require 'test_helper'

class Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get spills" do
    get api_v1_spills_url
    assert_response :success
  end

end
