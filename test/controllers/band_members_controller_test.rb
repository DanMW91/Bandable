require 'test_helper'

class BandMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get band_members_create_url
    assert_response :success
  end

end
