class Board < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :user_id }
  has_many :lists
end
