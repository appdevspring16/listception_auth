class Card < ActiveRecord::Base

  validates :list_id, :presence => true
  validates :name, :presence => true

end
