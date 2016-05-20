class Card < ActiveRecord::Base
  validates :name, :presence => true
  validates :list_id, :presence => true
end
