class Street < ApplicationRecord
    has_many :plates
    has_many :homes, through: :plates
end
