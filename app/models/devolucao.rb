class Devolucao < ApplicationRecord
    belongs_to :produto
    belongs_to :cliente 

    enum status: { draft: 0, published: 1, archived: 2 }
    
end
