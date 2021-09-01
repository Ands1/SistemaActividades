class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  enum role: {
    participant: "participant",
    creator: "creator", 
    member: "member",
    superadministrator: "superadministrator" 
  }


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
