class Activity < ApplicationRecord
    has_many :activity_note, dependent: :delete_all, class_name: "Activity::Note", foreign_key: "activities_id"
    has_many :activity_participant, dependent: :delete_all, class_name: "Activity::Participant", foreign_key: "activities_id"
end
