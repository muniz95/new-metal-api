class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self
  belongs_to :country
  has_many :bands

  def jwt_payload
    self.jti = self.class.generate_jti
    self.save

    # super isn't doing anything useful, but if the gem updates i'll want it to be safe
    super.merge({
      jti: self.jti
    })
  end
end
