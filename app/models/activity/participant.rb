class Activity::Participant < ApplicationRecord
    belongs_to :user, foreign_key: 'users_id'
    belongs_to :activity, foreign_key: 'activities_id'


    validates :user, uniqueness: { scope: :activity, message: 'Must be unique for the same activity'}
  

    validates :participation_type, presence: true, allow_blank: false
    validates :contribution, presence: true, allow_blank: false
end
