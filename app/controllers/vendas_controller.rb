class VendasController < ApplicationController
    before_action :set_cliente, only: %i[ index new ]
    before_action :authenticate_user!


    def index
        # puts "TESTEEEEEEEEEEEEEEE1"
        # @cliente.vendas.build
    end


    def new
      puts "TESTEEEEEEEEEEEEEEE1"
      # @cliente.vendas.build
    end

    def show
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
