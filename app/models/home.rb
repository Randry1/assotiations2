class Home < ApplicationRecord
    has_many :plates
    has_many :streets, through: :plates
end
