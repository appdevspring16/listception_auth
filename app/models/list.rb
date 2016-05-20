class List < ActiveRecord::Base
  validates :name, :presence => true,
            :uniqueness => {:scope => :user_id}
  validates :board_id, :presence => true

  belongs_to :board_id
  has_many :cards
  # here we're telling it, a list belongs to a specific board - should be able to say card.list,  list.card.... want to add helper methods for all the associations that are drawn in the diagram - a list belongs to one board, so we want the method that we called to also be singular... rails wants the code to read like english, so it needs to be board_id b/c it's one specific board

end
