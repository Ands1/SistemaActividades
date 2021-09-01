class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  enum role: [
     participant: 'participant',
     creator: 'creator', 
     teammember: 'teammember',
     superadministrator: 'superadministrator' ]

  after_initialize do
    if self.new_record?
      self.role ||= :participant
    end
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
