class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validate :one_admin

  private
       
  def one_admin
    if Admin.exists?
      errors.add(:base, "Only can be one Admin.")
    end
  end       
end
        

