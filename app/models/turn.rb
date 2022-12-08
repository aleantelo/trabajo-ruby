class Turn < ApplicationRecord

    validates :fecha, presence: true
    
    validates :hora, presence: true
    belongs_to :user
    belongs_to :sucursal

end
