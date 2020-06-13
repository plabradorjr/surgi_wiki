class Inventory < ApplicationRecord

    belongs_to :user
    has_many :inventory_services
    has_many :services, through: :inventory_services

    validates :name, presence: true, length: { minimum: 1, maximum: 50 }
    validates :location, presence: true, length: { minimum: 1, maximum: 200 }
    validates_uniqueness_of :name, :case_sensitive => false


    mount_uploader :picture, PictureUploader

    def self.search(search)
        if search
          find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
        else
          find(:all)
        end
    end


end
