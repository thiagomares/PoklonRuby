class EnderecousuariosController < ApplicationController
  before_action :set_enderecousuario, only: %i[ show edit update destroy ]

  # GET /enderecousuarios or /enderecousuarios.json
  def index
    @enderecousuarios = Enderecousuario.all
  end

  # GET /enderecousuarios/1 or /enderecousuarios/1.json
  def show
  end

  # GET /enderecousuarios/new
  def new
    @enderecousuario = Enderecousuario.new
  end

  # GET /enderecousuarios/1/edit
  def edit
  end

  # POST /enderecousuarios or /enderecousuarios.json
  def create
    @enderecousuario = Enderecousuario.new(enderecousuario_params)

    respond_to do |format|
      if @enderecousuario.save
        format.html { redirect_to enderecousuario_url(@enderecousuario), notice: "Enderecousuario was successfully created." }
        format.json { render :show, status: :created, location: @enderecousuario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enderecousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enderecousuarios/1 or /enderecousuarios/1.json
  def update
    respond_to do |format|
      if @enderecousuario.update(enderecousuario_params)
        format.html { redirect_to enderecousuario_url(@enderecousuario), notice: "Enderecousuario was successfully updated." }
        format.json { render :show, status: :ok, location: @enderecousuario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enderecousuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enderecousuarios/1 or /enderecousuarios/1.json
  def destroy
    @enderecousuario.destroy

    respond_to do |format|
      format.html { redirect_to enderecousuarios_url, notice: "Enderecousuario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enderecousuario
      @enderecousuario = Enderecousuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enderecousuario_params
      params.require(:enderecousuario).permit(:customerID, :logradouro, :state, :state_alias)
    end
end
