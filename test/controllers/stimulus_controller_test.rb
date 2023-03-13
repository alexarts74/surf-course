require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get FormDesign" do
    get stimulus_FormDesign_url
    assert_response :success
  end
end
