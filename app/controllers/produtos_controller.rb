class ProdutosController < ApplicationController
  before_action :set_produto, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /produtos or /produtos.json
  def index
<<<<<<< HEAD
    @produtos = Produto.all
=======
    
    @q = Produto.ransack(params[:q])
    @produtos = @q.result.page(params[:page])

    #@produtos = Produto.all.paginate(page: params[:page])
    
>>>>>>> 2b3a84140d0ed681f2e0b6684b260ef8c9f35c15
  end

  # GET /produtos/1 or /produtos/1.json
  def show
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit
  end

  # POST /produtos or /produtos.json
  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to produto_url(@produto), notice: "Produto was successfully created." }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtos/1 or /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to produto_url(@produto), notice: "Produto was successfully updated." }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1 or /produtos/1.json
  def destroy
    @produto.destroy

    respond_to do |format|
      format.html { redirect_to produtos_url, notice: "Produto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produto_params
<<<<<<< HEAD
      params.require(:produto).permit(:nome, :tipo, :descricao, :numero, :preco_compra, :preco_venda)
=======
      params.require(:produto).permit(:nome, :quantidade, :tipo, :descricao, :numero, :preco_compra, :preco_venda)
>>>>>>> 2b3a84140d0ed681f2e0b6684b260ef8c9f35c15
    end
end
