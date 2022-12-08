class Sucursal < ApplicationRecord
    validates :nombre, presence: true, uniqueness: true

    has_many :turns, dependent: :restrict_with_exception
end
