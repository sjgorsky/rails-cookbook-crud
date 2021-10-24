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

<<<<<<< HEAD
    #GET /cookbook_collections/new
    def new
        @cookbook_collection = CookbookCollection.new
    end

    #GET /cookbook_collections/1/edit
    def edit
    end

    #POST /cookbook_collections
    #POST /cookbook_collections.json
    def create
        @cookbook_collection = CookbookCollection.new(cookbook_params)

        if @cookbook_collection.save
            render json: @cookbook_collection
        else
            render json: @cookbook_collection.errors
        end
    end

    #PATCH/PUT /cookbook_collections/1
    #PATCH/PUT /cookbook_collections/1.json
    def update
    end

    #DELETE /cookbook_collections/1
    #DELETE /cookbook_collections/1.json
    def destroy
        @cookbook_collection.destroy

        render json: { notice: 'Cookbook was successfully removed' }
    end

    private
    def set_cookbook
        @cookbook_collection = CookbookCollection.find(params[:id])
    end

    #only allow a list of trusted parameters through
    def cookbook_params
        params.permit(:title, :author, :cuisine, :year)
    end
=======
>>>>>>> 876ed4ed19e6347e9e62f14a920822c08c6d91eb

end
