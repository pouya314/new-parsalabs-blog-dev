require 'test_helper'

class UploadControllerTest < ActionController::TestCase
  test "should get s3" do
    get :s3
    assert_response :success
  end

end
