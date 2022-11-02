class Devolucao < ApplicationRecord
    belongs_to :produto
    belongs_to :cliente 

    enum status: {"Com Defeito": 0,  "Sem Defeito": 1 }
    
end
 