class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, authentication_keys: [:email], :registerable,
         :recoverable, :rememberable, :validatable
        
    def email
      restaurant@gmail.com
    end
        
    def password
     123456
    end
  end
        
end
