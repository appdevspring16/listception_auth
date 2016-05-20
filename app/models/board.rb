class Board < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => {:scope => :user_id}

  has_many :lists, :class_name => "List", :foreign_key => "board_id"
  belongs_to :board



end
