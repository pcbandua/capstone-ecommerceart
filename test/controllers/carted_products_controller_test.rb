require "test_helper"

class CartedProductsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "CartedProduct.count", 1 do
      post "/carted_products.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "update" do
    carted_product = CartedProduct.first
    patch "/carted_products/#{carted_product.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "CartedProduct.count", -1 do
      delete "/carted_products/#{CartedProduct.first.id}.json"
      assert_response 200
    end
  end
end
