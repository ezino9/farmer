require 'test_helper'

class Kcfarmer::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kcfarmer_dashboard_index_url
    assert_response :success
  end

end
