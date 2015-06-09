class FileDescriptionsController < ApplicationController
  before_action :set_file_description, only: [:show, :edit, :update, :destroy]

  # GET /file_descriptions
  # GET /file_descriptions.json
  def index
    @file_descriptions = FileDescription.all
  end

  # GET /file_descriptions/1
  # GET /file_descriptions/1.json
  def show
  end

  # GET /file_descriptions/new
  def new
    @file_description = FileDescription.new
  end

  # GET /file_descriptions/1/edit
  def edit
  end

  # POST /file_descriptions
  # POST /file_descriptions.json
  def create
    @file_description = FileDescription.new(file_description_params)

    respond_to do |format|
      if @file_description.save
        format.html { redirect_to @file_description, notice: 'File description was successfully created.' }
        format.json { render :show, status: :created, location: @file_description }
      else
        format.html { render :new }
        format.json { render json: @file_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_descriptions/1
  # PATCH/PUT /file_descriptions/1.json
  def update
    respond_to do |format|
      if @file_description.update(file_description_params)
        format.html { redirect_to @file_description, notice: 'File description was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_description }
      else
        format.html { render :edit }
        format.json { render json: @file_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_descriptions/1
  # DELETE /file_descriptions/1.json
  def destroy
    @file_description.destroy
    respond_to do |format|
      format.html { redirect_to file_descriptions_url, notice: 'File description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_description
      @file_description = FileDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_description_params
      params.require(:file_description).permit(:cantidad, :unit, :description, :code, :price, :amount, :document_id, :product_id)
    end
end
