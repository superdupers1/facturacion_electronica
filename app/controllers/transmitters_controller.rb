class TransmittersController < ApplicationController
  before_action :set_transmitter, only: [:show, :edit, :update, :destroy]

  # GET /transmitters
  # GET /transmitters.json
  def index
    @transmitters = Transmitter.all
  end

  # GET /transmitters/1
  # GET /transmitters/1.json
  def show
  end

  # GET /transmitters/new
  def new
    @transmitter = Transmitter.new
  end

  # GET /transmitters/1/edit
  def edit
  end

  # POST /transmitters
  # POST /transmitters.json
  def create
    @transmitter = Transmitter.new(transmitter_params)

    respond_to do |format|
      if @transmitter.save
        format.html { redirect_to @transmitter, notice: 'Transmitter was successfully created.' }
        format.json { render :show, status: :created, location: @transmitter }
      else
        format.html { render :new }
        format.json { render json: @transmitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmitters/1
  # PATCH/PUT /transmitters/1.json
  def update
    respond_to do |format|
      if @transmitter.update(transmitter_params)
        format.html { redirect_to @transmitter, notice: 'Transmitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @transmitter }
      else
        format.html { render :edit }
        format.json { render json: @transmitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmitters/1
  # DELETE /transmitters/1.json
  def destroy
    @transmitter.destroy
    respond_to do |format|
      format.html { redirect_to transmitters_url, notice: 'Transmitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmitter
      @transmitter = Transmitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transmitter_params
      params.require(:transmitter).permit(:rfc, :name, :street, :number, :neighborhood, :zc, :city, :state, :country, :phone, :document_type, :expedition_place, :tax_regime)
    end
end
