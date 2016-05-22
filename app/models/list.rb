class List < ActiveRecord::Base

  validates :name, :presense => true, :uniqueness => { :scope => :board_id }
  validates :board_id, :presence => true

end
