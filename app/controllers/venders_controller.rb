class VendersController < ApplicationController
  before_action :set_vender, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /venders
  # GET /venders.json
  def index
    @venders = Vender.all
  end

  # GET /venders/1
  # GET /venders/1.json
  def show
  end

  # GET /venders/new
  def new
    @vender = Vender.new
  end

  # GET /venders/1/edit
  def edit
  end

  # POST /venders
  # POST /venders.json
  def create
    @vender = Vender.new(vender_params)

    respond_to do |format|
      if @vender.save
        format.html { redirect_to @vender, notice: 'Vender was successfully created.' }
        format.json { render :show, status: :created, location: @vender }
      else
        format.html { render :new }
        format.json { render json: @vender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venders/1
  # PATCH/PUT /venders/1.json
  def update
    respond_to do |format|
      if @vender.update(vender_params)
        format.html { redirect_to @vender, notice: 'Vender was successfully updated.' }
        format.json { render :show, status: :ok, location: @vender }
      else
        format.html { render :edit }
        format.json { render json: @vender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venders/1
  # DELETE /venders/1.json
  def destroy
    @vender.destroy
    respond_to do |format|
      format.html { redirect_to venders_url, notice: 'Vender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vender
      @vender = Vender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vender_params
      params.require(:vender).permit(:name)
    end
end
