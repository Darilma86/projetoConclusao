class ComprasController < ApplicationController
    before_action :set_cliente, only: %i[ new ]
    before_action :authenticate_user!


    def new
      
      
      len = 10
      protocolo = SecureRandom.alphanumeric(len)
      
      puts "PROTOCOLO - #{protocolo}"


        @cliente.vendas.build
        @compra = Compra.new
        @compra.protocolo = protocolo;
         
        
    end


    def create

      puts "UOUUUUUUUUU"

    end



    private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end

    # Only allow a list of trusted parameters through.
    # def cliente_params

    #   params.require(:cliente).permit(:name, :rg, :cpf, :endereco, :celucar, :sexo, :data_nasciemnto, :email, :cidade)

    # end



end
