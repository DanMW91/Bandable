require 'test_helper'

class BandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bands_index_url
    assert_response :success
  end

end
