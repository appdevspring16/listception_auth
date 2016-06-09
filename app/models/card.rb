class Card < ActiveRecord::Base
  validates :list_id, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true

  belongs_to :list
end
