class Devolucao < ApplicationRecord
    belongs_to :produto
    belongs_to :cliente 

    enum status: {broked: 0,  flawless: 1 }
    
end
 