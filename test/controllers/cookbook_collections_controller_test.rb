require "test_helper"

class CookbookCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cookbook_collection = cookbook_collections(:one)
  end

  test "should get index" do
    get cookbook_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_cookbook_collection_url
    assert_response :success
  end

  test "should create cookbook_collection" do
    assert_difference('CookbookCollection.count') do
      post cookbook_collections_url, params: { cookbook_collection: { author: @cookbook_collection.author, cuisine: @cookbook_collection.cuisine, publishes: @cookbook_collection.publishes, title: @cookbook_collection.title } }
    end

    assert_redirected_to cookbook_collection_url(CookbookCollection.last)
  end

  test "should show cookbook_collection" do
    get cookbook_collection_url(@cookbook_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_cookbook_collection_url(@cookbook_collection)
    assert_response :success
  end

  test "should update cookbook_collection" do
    patch cookbook_collection_url(@cookbook_collection), params: { cookbook_collection: { author: @cookbook_collection.author, cuisine: @cookbook_collection.cuisine, publishes: @cookbook_collection.publishes, title: @cookbook_collection.title } }
    assert_redirected_to cookbook_collection_url(@cookbook_collection)
  end

  test "should destroy cookbook_collection" do
    assert_difference('CookbookCollection.count', -1) do
      delete cookbook_collection_url(@cookbook_collection)
    end

    assert_redirected_to cookbook_collections_url
  end
end
