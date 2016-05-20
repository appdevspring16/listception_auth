class Board < ActiveRecord::Base
  # user_id

  # name
  validates :name, :presence => true, :uniqueness => { :scope => :user_id }

  has_many :lists, :class_name => "List", :foreign_key => "board_id"
  # has_many :lists, :class_name => "List"

end
