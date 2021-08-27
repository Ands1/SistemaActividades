class Activity::Note < ApplicationRecord
   belongs_to :user, foreign_key: 'users_id'
   belongs_to :activity, foreign_key: 'activities_id'
end
