class Activity < ApplicationRecord
    has_many :activity_note, dependent: :delete_all, class_name: "Activity::Note", foreign_key: "activities_id"
    has_many :activity_participant, dependent: :delete_all, class_name: "Activity::Participant", foreign_key: "activities_id"

    validates :name, presence: true, allow_blank: false
    validates :description, presence: true, allow_blank: false
    validates :location, presence: true, allow_blank: false
    validates :total_cost, presence: true, allow_blank: false
    validates :initial_date, presence: true, allow_blank: false
    validates :end_date, presence: true, allow_blank: false
    validates :state, presence: true, allow_blank: false
end
