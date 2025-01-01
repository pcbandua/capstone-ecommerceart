require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Order.count", 1 do
      post "/orders.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end
end
