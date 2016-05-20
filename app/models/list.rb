class List < ActiveRecord::Base
  validates :name, :presence => true
            :uniqueness => {:scope => :user_id}
  validates :board_id, :presence => true,

end
