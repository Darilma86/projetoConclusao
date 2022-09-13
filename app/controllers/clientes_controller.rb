class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  
  # GET /clientes or /clientes.json
<<<<<<< HEAD
  def index
    @clientes = Cliente.all
=======
  def index 
    
    
     @q = Cliente.ransack(params[:q])
     @clientes = @q.result.page(params[:page])
    #@clientes = Cliente.all.paginate(page: params[:page])
    
   
>>>>>>> 2b3a84140d0ed681f2e0b6684b260ef8c9f35c15
  end

  # GET /clientes/1 or /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes or /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to cliente_url(@cliente), notice: "Cliente was successfully created." }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1 or /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to cliente_url(@cliente), notice: "Cliente was successfully updated." }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1 or /clientes/1.json
  def destroy
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to clientes_url, notice: "Cliente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cliente_params
<<<<<<< HEAD
      params.require(:cliente).permit(:nome, :endereco, :celucar, :rg, :sexo, :data_nasciemnto, :email, :cidade)
=======
      params.require(:cliente).permit(:name, :rg, :cpf, :endereco, :celucar, :sexo, :data_nasciemnto, :email, :cidade)
>>>>>>> 2b3a84140d0ed681f2e0b6684b260ef8c9f35c15
    end
end
