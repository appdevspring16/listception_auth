class Board < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :lists, :class_name => "List", :foreign_key => "board_id"
end
