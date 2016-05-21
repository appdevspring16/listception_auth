class Board < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :lists
  belongs_to :user

end
