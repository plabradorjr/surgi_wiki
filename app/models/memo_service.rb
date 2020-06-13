class MemoService < ApplicationRecord
    belongs_to :memo 
    belongs_to :service
end