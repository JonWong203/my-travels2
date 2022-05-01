class DestinationsController < ApplicationController
  before_action :set_street
  before_action :authenticate_user
  before_action :set_user


  def add_street
    Destination.create({user: @user, street: @street})
  end

  def remove_street

  end
  # # GET /destinations or /destinations.json
  # def index
  #   @destinations = Destination.all
  # end
  #
  # # GET /destinations/1 or /destinations/1.json
  # def show
  # end
  #
  # # GET /destinations/new
  # def new
  #   @destination = Destination.new
  # end
  #
  # # GET /destinations/1/edit
  # def edit
  # end
  #
  # # POST /destinations or /destinations.json
  # def create
  #   @destination = Destination.new(destination_params)
  #
  #   respond_to do |format|
  #     if @destination.save
  #       format.html { redirect_to destination_url(@destination), notice: "Destination was successfully created." }
  #       format.json { render :show, status: :created, location: @destination }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @destination.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /destinations/1 or /destinations/1.json
  # def update
  #   respond_to do |format|
  #     if @destination.update(destination_params)
  #       format.html { redirect_to destination_url(@destination), notice: "Destination was successfully updated." }
  #       format.json { render :show, status: :ok, location: @destination }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @destination.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /destinations/1 or /destinations/1.json
  # def destroy
  #   @destination.destroy
  #
  #   respond_to do |format|
  #     format.html { redirect_to destinations_url, notice: "Destination was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_street
      @street = Street.find_by(id: params[:street_id])
    end

    def set_user
      @user = User.find_by(id: params[:user_id])
    end
    # # Use callbacks to share common setup or constraints between actions.
    # def set_destination
    #   @destination = Destination.find(params[:id])
    # end
    #
    # # Only allow a list of trusted parameters through.
    # def destination_params
    #   params.require(:destination).permit(:user_id, :street_id)
    # end
end
