class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_message

  validates_presence_of :email

  def send_welcome_message
    CustomerMailer.welcome_email(self).deliver_now
  end
end
