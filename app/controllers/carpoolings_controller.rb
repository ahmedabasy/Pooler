class CarpoolingsController < ApplicationController
  before_action :set_carpooling, only: [:show, :edit, :update, :destroy]

  # GET /carpoolings
  # GET /carpoolings.json
  def index
    @carpoolings = Carpooling.all
  end

  # GET /carpoolings/1
  # GET /carpoolings/1.json
  def show
  end

  # GET /carpoolings/new
  def new
    @carpooling = Carpooling.new
  end

  # GET /carpoolings/1/edit
  def edit
  end

  # POST /carpoolings
  # POST /carpoolings.json
  def create
    @carpooling = Carpooling.new(carpooling_params)

    respond_to do |format|
      if @carpooling.save
        format.html { redirect_to @carpooling, notice: 'Carpooling was successfully created.' }
        format.json { render :show, status: :created, location: @carpooling }
      else
        format.html { render :new }
        format.json { render json: @carpooling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carpoolings/1
  # PATCH/PUT /carpoolings/1.json
  def update
    respond_to do |format|
      if @carpooling.update(carpooling_params)
        format.html { redirect_to @carpooling, notice: 'Carpooling was successfully updated.' }
        format.json { render :show, status: :ok, location: @carpooling }
      else
        format.html { render :edit }
        format.json { render json: @carpooling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carpoolings/1
  # DELETE /carpoolings/1.json
  def destroy
    @carpooling.destroy
    respond_to do |format|
      format.html { redirect_to carpoolings_url, notice: 'Carpooling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carpooling
      @carpooling = Carpooling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carpooling_params
      params.require(:carpooling).permit(:name, :telephone, :age, :location_selection, :destination_location, :travel_date, :from, :to, :notes)
    end
end
