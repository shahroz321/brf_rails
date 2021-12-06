class Api::V1::ApartmentsController < Api::V1::ApiController
  before_action :set_apartment, only: %i[ show edit update destroy ]

  def index
    @apartments = Apartment.all
  end

  def show
  end

  def new
    @apartment = Apartment.new
  end

  def edit
  end

  def create
    @apartment = Apartment.new(apartment_params)

    respond_to do |format|
      if @apartment.save
        format.json { render :show, status: :created, location: @apartment }
      else
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.json { render :show, status: :ok, location: @apartment }
      else
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @apartment.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

    def set_apartment
      @apartment = Apartment.find(params[:id])
    end


    def apartment_params
      params.require(:apartment).permit(:number, :area, :floor, :amount_of_room)
    end
end
