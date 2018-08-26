require 'test_helper'

class TweeetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweeets_index_url
    assert_response :success
  end

end
