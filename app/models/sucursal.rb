class Sucursal < ApplicationRecord
    validates :nombre, presence: true, uniqueness: true

    has_many :turns, dependent: :restrict_with_exception
    
    has_many :sucursal_horario, dependent: :destroy
    has_many :horarios, through: :sucursal_horario, dependent: :destroy
end
