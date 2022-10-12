class RelatoriosController < ApplicationController
    # before_action :set_cliente, only: %i[ new ]
    before_action :authenticate_user!



    def index
      @q = Venda.ransack(params[:q])
      @vendas = @q.result.page(params[:page])
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
