class CookbooksController < ApplicationController
  before_action :set_cookbook, only: %i[ show edit update destroy ]

  # GET /cookbooks or /cookbooks.json
  def index
    @cookbooks = Cookbook.all
  end

  # GET /cookbooks/1 or /cookbooks/1.json
  def show
  end

  # GET /cookbooks/new
  def new
    @cookbook = Cookbook.new
  end

  # GET /cookbooks/1/edit
  def edit
  end

  # POST /cookbooks or /cookbooks.json
  def create
    @cookbook = Cookbook.new(cookbook_params)

    respond_to do |format|
      if @cookbook.save
        format.html { redirect_to @cookbook, notice: "Cookbook was successfully created." }
        format.json { render :show, status: :created, location: @cookbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cookbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookbooks/1 or /cookbooks/1.json
  def update
    respond_to do |format|
      if @cookbook.update(cookbook_params)
        format.html { redirect_to @cookbook, notice: "Cookbook was successfully updated." }
        format.json { render :show, status: :ok, location: @cookbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cookbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookbooks/1 or /cookbooks/1.json
  def destroy
    @cookbook.destroy
    respond_to do |format|
      format.html { redirect_to cookbooks_url, notice: "Cookbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookbook
      @cookbook = Cookbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cookbook_params
      params.require(:cookbook).permit(:title, :author, :cuisine, :year)
    end
end
