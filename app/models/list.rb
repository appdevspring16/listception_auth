class List < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => {:scope => :board_id}
    validates :board_id, :presence => true

    belongs_to :board
    has_many :cards
end
