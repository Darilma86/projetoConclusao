class Devolucao < ApplicationRecord
    belongs_to :produto
    belongs_to :cliente 

    enum status: {Com_Defeito: 0,  Sem_Defeito: 1 }
    
end
 