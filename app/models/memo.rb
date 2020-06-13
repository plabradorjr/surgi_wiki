class Memo < ApplicationRecord

    belongs_to :user
    has_many :memo_services
    has_many :services, through: :memo_services

    validates :title, presence: true
    validates :description, presence: true

    def self.search(search)
        if search
          find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
        else
          find(:all)
        end
    end

end
