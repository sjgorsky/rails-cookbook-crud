class CookbookCollectionsController < ApplicationController
  before_action :set_cookbook_collection, only: %i[ show edit update destroy ]

  # GET /cookbook_collections or /cookbook_collections.json
  def index
    @cookbook_collections = CookbookCollection.all
  end

  # GET /cookbook_collections/1 or /cookbook_collections/1.json
  def show
  end

  # GET /cookbook_collections/new
  def new
    @cookbook_collection = CookbookCollection.new
  end

  # GET /cookbook_collections/1/edit
  def edit
  end

  # POST /cookbook_collections or /cookbook_collections.json
  def create
    @cookbook_collection = CookbookCollection.new(cookbook_collection_params)

    respond_to do |format|
      if @cookbook_collection.save
        format.html { redirect_to @cookbook_collection, notice: "Cookbook collection was successfully created." }
        format.json { render :show, status: :created, location: @cookbook_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cookbook_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookbook_collections/1 or /cookbook_collections/1.json
  def update
    respond_to do |format|
      if @cookbook_collection.update(cookbook_collection_params)
        format.html { redirect_to @cookbook_collection, notice: "Cookbook collection was successfully updated." }
        format.json { render :show, status: :ok, location: @cookbook_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cookbook_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookbook_collections/1 or /cookbook_collections/1.json
  def destroy
    @cookbook_collection.destroy
    respond_to do |format|
      format.html { redirect_to cookbook_collections_url, notice: "Cookbook collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookbook_collection
      @cookbook_collection = CookbookCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cookbook_collection_params
      params.require(:cookbook_collection).permit(:title, :author, :cuisine, :publishes)
    end
end
