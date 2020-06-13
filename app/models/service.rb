class Service < ApplicationRecord

    validates :name, presence: true, length: { maximum: 25 }
    validates_uniqueness_of :name

    has_many :inventory_services
    has_many :inventories, through: :inventory_services
    
    has_many :memo_services
    has_many :memos, through: :memo_services

end
