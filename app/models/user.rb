# == Schema Information
#
# Table name: users
#
#  id                 :uuid             not null, primary key
#  login              :string           not null
#  encrypted_password :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class User < ApplicationRecord
  devise :database_authenticatable, :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist, authentication_keys: [:login]

  validates :login, presence: true, uniqueness: { case_sensitive: true }

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login).downcase
    where(conditions).where(['login = ?', login]).first
  end
end
