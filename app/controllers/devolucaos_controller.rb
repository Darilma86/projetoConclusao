class DevolucaosController < ApplicationController
  before_action :set_devolucao, only: %i[ show edit update destroy ]

  # GET /devolucaos or /devolucaos.json
  def index
    @devolucaos = Devolucao.all
    @q = Devolucao.all.order(created_at: :desc).ransack(params[:q])
    @devolucaos = @q.result.page(params[:page])
  end

  # GET /devolucaos/1 or /devolucaos/1.json
  def show
  end

  # GET /devolucaos/new
  def new
    @devolucao = Devolucao.new
    # @cliente.vendas.build
    # @compra = Compra.new
    @id = params[:cliente_id]
    @id = params[:produto_id]
  end

  # GET /devolucaos/1/edit
  def edit
  end

  # POST /devolucaos or /devolucaos.json
  def create
    @devolucao = Devolucao.new(devolucao_params)

    respond_to do |format|
      if @devolucao.save
        format.html { redirect_to devolucao_url(@devolucao), notice: "Devolucao was successfully created." }
        format.json { render :show, status: :created, location: @devolucao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @devolucao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devolucaos/1 or /devolucaos/1.json
  def update
    respond_to do |format|
      if @devolucao.update(devolucao_params)
        format.html { redirect_to devolucao_url(@devolucao), notice: "Devolucao was successfully updated." }
        format.json { render :show, status: :ok, location: @devolucao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @devolucao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devolucaos/1 or /devolucaos/1.json
  def destroy
    @devolucao.destroy

    respond_to do |format|
      format.html { redirect_to devolucaos_url, notice: "Devolucao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devolucao
      @devolucao = Devolucao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devolucao_params
      params.require(:devolucao).permit(:cliente_id, :produto_id, :justificativa)
    end
end
