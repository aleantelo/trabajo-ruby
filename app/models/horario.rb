class Horario < ApplicationRecord
    has_many :sucursal_horario
    has_many :sucursal, through: :sucursal_horario
end
