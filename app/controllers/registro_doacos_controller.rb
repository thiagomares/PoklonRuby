class RegistroDoacosController < ApplicationController
  before_action :set_registro_doaco, only: %i[ show edit update destroy ]

  # GET /registro_doacos or /registro_doacos.json
  def index
    @registro_doacos = RegistroDoaco.all
  end

  # GET /registro_doacos/1 or /registro_doacos/1.json
  def show
  end

  # GET /registro_doacos/new
  def new
    @registro_doaco = RegistroDoaco.new
  end

  # GET /registro_doacos/1/edit
  def edit
  end

  # POST /registro_doacos or /registro_doacos.json
  def create
    @registro_doaco = RegistroDoaco.new(registro_doaco_params)

    respond_to do |format|
      if @registro_doaco.save
        format.html { redirect_to registro_doaco_url(@registro_doaco), notice: "Registro doaco was successfully created." }
        format.json { render :show, status: :created, location: @registro_doaco }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registro_doaco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_doacos/1 or /registro_doacos/1.json
  def update
    respond_to do |format|
      if @registro_doaco.update(registro_doaco_params)
        format.html { redirect_to registro_doaco_url(@registro_doaco), notice: "Registro doaco was successfully updated." }
        format.json { render :show, status: :ok, location: @registro_doaco }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registro_doaco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_doacos/1 or /registro_doacos/1.json
  def destroy
    @registro_doaco.destroy

    respond_to do |format|
      format.html { redirect_to registro_doacos_url, notice: "Registro doaco was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_doaco
      @registro_doaco = RegistroDoaco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registro_doaco_params
      params.require(:registro_doaco).permit(:donationID, :customerID, :donation_date)
    end
end
