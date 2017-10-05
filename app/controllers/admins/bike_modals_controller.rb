class Admins::BikeModalsController < ApplicationController
  before_action :set_bike_modal, only: [:show, :edit, :update, :destroy]

  def index
    @bike_modals = BikeModal.all
  end

  def show
  end

  def new
    @bike_modal = BikeModal.new
  end

  def edit
  end

  def create
    @bike_modal = BikeModal.new(bike_modal_params)

    respond_to do |format|
      if @bike_modal.save
        format.html { redirect_to admins_bike_modal_path(@bike_modal), notice: 'Bike modal was successfully created.' }
        format.json { render :show, status: :created, location: @bike_modal }
      else
        format.html { render :new }
        format.json { render json: @bike_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bike_modal.update(bike_modal_params)
        format.html { redirect_to admins_bike_modal_path(@bike_modal), notice: 'Bike modal was successfully updated.' }
        format.json { render :show, status: :ok, location: @bike_modal }
      else
        format.html { render :edit }
        format.json { render json: @bike_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bike_modal.destroy
    respond_to do |format|
      format.html { redirect_to admins_bike_modals_url, notice: 'Bike modal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_bike_modal
      @bike_modal = BikeModal.find(params[:id])
    end

    def bike_modal_params
      params.require(:bike_modal).permit(:name, :images_attributes => [:id, :image, :imageable_id, :imageable_type, :_destroy])
    end
end
