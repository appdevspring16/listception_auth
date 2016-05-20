class Card < ActiveRecord::Base
  #t.integer  "list_id"
  validates :list_id, :presence => true
  #t.string   "name"
  validates :name, :presence => true
  #t.text     "description"
  #t.datetime "created_at"
  #t.datetime "updated_at"

  belongs_to :list
end
