require 'test_helper'

class FairsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fairs_index_url
    assert_response :success
  end

  test "should get show" do
    get fairs_show_url
    assert_response :success
  end

end
