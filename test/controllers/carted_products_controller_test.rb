require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "CartedProduct.count", 1 do
      post "/carted_products.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end
end
