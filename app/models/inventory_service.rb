class InventoryService < ApplicationRecord
    belongs_to :inventory 
    belongs_to :service
end