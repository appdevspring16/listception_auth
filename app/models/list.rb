class List < ActiveRecord::Base

  has_many :cards
  belongs_to :board

  validates :name, :presence => true, :uniqueness => { :scope => :board_id }
  validates :board_id, :presence => true

end
