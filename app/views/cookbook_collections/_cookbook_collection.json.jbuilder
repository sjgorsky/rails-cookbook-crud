json.extract! cookbook_collection, :id, :title, :author, :cuisine, :publishes, :created_at, :updated_at
json.url cookbook_collection_url(cookbook_collection, format: :json)
