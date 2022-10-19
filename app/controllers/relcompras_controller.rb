class RelcomprasController < ApplicationController
    before_action :authenticate_user!
  
  
    # GET /relcompras or /relcompras.json
    def index
      
            @q = Compra.all.order(created_at: :desc).ransack(params[:q])
            @compras = @q.result.page(params[:page])
    end
  
    # GET /relcompras/1 or /relcompras/1.json
    def show
    end
  
  

    private
    # Use callbacks to share common setup or constraints between actions.
    # def set_cliente
    #   @cliente = Cliente.find(params[:cliente_id])
    # end

    # # Only allow a list of trusted parameters through.
    # def compra_params

    #   params.require(:compra).permit(:cliente_id, vendas_attributes:[:produto_id, :quantidade, :valor_venda, :compra_id, :cliente_id, :_destroy] )

    # end

  end
  