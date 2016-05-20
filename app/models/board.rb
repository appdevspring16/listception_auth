class Board < ActiveRecord::Base
  #t.integer  "user_id"
  #t.string   "name"
  validates :name, :presence => true, :uniqueness => {:scope => :user_id}
  #t.datetime "created_at"
  #t.datetime "updated_at

  has_many :lists
end
