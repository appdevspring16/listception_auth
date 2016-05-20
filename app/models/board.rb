class Board < ActiveRecord::Base
  validates :name, :presence => true,
            :uniqueness => {:scope => :user_id}

            # This says that diff users can have the same name, but within the set for that user, it needs to be unique...
end
