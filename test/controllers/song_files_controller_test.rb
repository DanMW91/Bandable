require 'test_helper'

class SongFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get song_files_create_url
    assert_response :success
  end

end
