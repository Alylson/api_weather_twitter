require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @url = '/api/v1/weather'
  end

  test "should get index" do
    get @url
    assert_response :success
  end
end
