require "test_helper"

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get def" do
    get welcomes_def_url
    assert_response :success
  end

  test "should get index" do
    get welcomes_index_url
    assert_response :success
  end
end
