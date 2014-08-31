class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :first_name, presence: true

validates :last_name, presence: true

 validates :profile_name, presence: true, format: {
    with: /\A[a-zA-Z\-\_]+\Z/,
    message: "must be formatted correctly."
  }



  has_many :statuses

end
