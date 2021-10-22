require "application_system_test_case"

class CookbookCollectionsTest < ApplicationSystemTestCase
  setup do
    @cookbook_collection = cookbook_collections(:one)
  end

  test "visiting the index" do
    visit cookbook_collections_url
    assert_selector "h1", text: "Cookbook Collections"
  end

  test "creating a Cookbook collection" do
    visit cookbook_collections_url
    click_on "New Cookbook Collection"

    fill_in "Author", with: @cookbook_collection.author
    fill_in "Cuisine", with: @cookbook_collection.cuisine
    fill_in "Publishes", with: @cookbook_collection.publishes
    fill_in "Title", with: @cookbook_collection.title
    click_on "Create Cookbook collection"

    assert_text "Cookbook collection was successfully created"
    click_on "Back"
  end

  test "updating a Cookbook collection" do
    visit cookbook_collections_url
    click_on "Edit", match: :first

    fill_in "Author", with: @cookbook_collection.author
    fill_in "Cuisine", with: @cookbook_collection.cuisine
    fill_in "Publishes", with: @cookbook_collection.publishes
    fill_in "Title", with: @cookbook_collection.title
    click_on "Update Cookbook collection"

    assert_text "Cookbook collection was successfully updated"
    click_on "Back"
  end

  test "destroying a Cookbook collection" do
    visit cookbook_collections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cookbook collection was successfully destroyed"
  end
end
