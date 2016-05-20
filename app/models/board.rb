class Board < ActiveRecord::Base

  has_many :lists
  #:class_name => "List", :foreign_key => "board_id"

  validates :name, :presence => true, :uniqueness => { :scope => :user_id}

end
