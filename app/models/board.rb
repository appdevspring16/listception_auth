class Board < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
