class Board < ActiveRecord::Base
  validates :name, :presence => true,
            :uniqueness => {:scope => :user_id}
            # 
            # has_many :lists, :class_name => "List",
            #           :foreign_key => "board_id"

            has_many :lists
            # can do this naming conventio because we followed proper naming convention, lists controller (methods) correlates to table name List, and because show html is already pulling up the ID that's part of getting it to show - it knows to look @ id #
            #
            # i'm telling it that i want to be able to CALL a METHOD called lists, and i want you to use that.. it says i'll go look in the list table, tell me which one, i'll do the .where for you, then you tell me where the foreign key is and i'll search w/in that column for you.


            # This says that diff users can have the same name, but within the set for that user, it needs to be unique...
end
