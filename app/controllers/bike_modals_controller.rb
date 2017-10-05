class BikeModalsController < ApplicationController
  before_action :set_bike_modal, only: [:show, :edit, :update, :destroy]

  # GET /bike_modals
  # GET /bike_modals.json
  def index
    @bike_modals = BikeModal.all
  end

  # GET /bike_modals/1
  # GET /bike_modals/1.json
  def show
  end

  # GET /bike_modals/new
  def new
    @bike_modal = BikeModal.new
  end

  # GET /bike_modals/1/edit
  def edit
  end

  # POST /bike_modals
  # POST /bike_modals.json
  def create
    @bike_modal = BikeModal.new(bike_modal_params)

    respond_to do |format|
      if @bike_modal.save
        format.html { redirect_to @bike_modal, notice: 'Bike modal was successfully created.' }
        format.json { render :show, status: :created, location: @bike_modal }
      else
        format.html { render :new }
        format.json { render json: @bike_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bike_modals/1
  # PATCH/PUT /bike_modals/1.json
  def update
    respond_to do |format|
      if @bike_modal.update(bike_modal_params)
        format.html { redirect_to @bike_modal, notice: 'Bike modal was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike_modal }
      else
        format.html { render :edit }
        format.json { render json: @bike_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bike_modals/1
  # DELETE /bike_modals/1.json
  def destroy
    @bike_modal.destroy
    respond_to do |format|
      format.html { redirect_to bike_modals_url, notice: 'Bike modal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bike_modal
      @bike_modal = BikeModal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bike_modal_params
      params.require(:bike_modal).permit(:name)
    end
end
