class List < ActiveRecord::Base
  #t.integer  "board_id"
  validates :board_id, :presence => true
  #t.string   "name"
  validates :name, :presence => true, :uniqueness => {:scope => :board_id}
  #t.datetime "created_at"
  #t.datetime "updated_at"

  belongs_to :board
  has_many :cards
end
