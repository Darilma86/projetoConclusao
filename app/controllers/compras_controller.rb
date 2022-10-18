class ComprasController < ApplicationController
    before_action :set_cliente, only: %i[ new ]
    before_action :authenticate_user!


      def
        @compras = Compra.all
        end
    def new
      
        @cliente.vendas.build
        @compra = Compra.new
        @id = params[:cliente_id]
         
    end


    def create

      len = 10
      protocolo = SecureRandom.alphanumeric(len)

      @compra = Compra.new(compra_params)
      @compra.protocolo = protocolo

      respond_to do |format|
        if @compra.save
          format.html { redirect_to clientes_path, notice: "Venda Efetuada com Sucesso!" }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end      

    end



    private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end

    # Only allow a list of trusted parameters through.
    def compra_params

      params.require(:compra).permit(:cliente_id, vendas_attributes:[:produto_id, :quantidade, :valor_venda, :compra_id, :cliente_id, :_destroy] )

    end



end
