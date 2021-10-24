class Api::V1::CookbookCollectionsController < ApplicationController
    before_action :set_cookbook, only: [:show, :edit, :update, :destroy]

    # GET /cookbooks
    # GET /cookbook_collections.json
    def index
        @cookbook_collections = CookbookCollection.all.order(title: :asc)
        render json: @cookbook_collections
    end

    #GET /cookbook_collections/1
    #GET /cookbook_collections/1.json
    def show
        if @cookbook_collection
            render json: @cookbook_collection
        else
            render json: @cookbook_collection.errors
        end
    end


end
