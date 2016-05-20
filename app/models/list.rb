class List < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :board_id}
  validates :board_id, :presence => true

belongs_to :board
# belongs_to :board, :class_name => "Board", :foreign_key => "board_id"
has_many :cards


end
