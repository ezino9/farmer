require 'test_helper'

class Investor::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get investor_dashboard_index_url
    assert_response :success
  end

end
