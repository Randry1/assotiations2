class Tree < ApplicationRecord
    has_and_belongs_to_many :bugs
end