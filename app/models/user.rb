# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  username   :string
#  password   :text
#  email      :string
#  phone      :string
#  birthdate  :date
#  bio        :text
#  url        :string
#  level      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'securerandom'
class User < ApplicationRecord
  has_many :muwashafat_users
  has_many :muwashafats, through: :muwashafat_users
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :group_binaan, foreign_key: :murabbi_id, class_name: 'Group'
  has_many :yaumiyah_reports
  has_many :yaumiyahs, through: :yaumiyah_reports

  enum level: [:tamhidi, :muayyid, :muntasib, :muntazim, :ahli, :paripurna]

  validates :name, :username, :password, :level, presence: true
  validates :username, :email, uniqueness: true

  before_create :encrypt_password

  def valid_password?(new_password)
    password.eql?(Digest::SHA1.hexdigest(new_password.to_s))
  end

  def self.login_api!(params)
    user = User.find_by(username: params[:username])
    if user.try(:valid_password?, params[:password])
      user.update_user_token
      user
    else
      nil
    end
  end

  def logout_api!
    remove_user_token
  end

  def api_response
    attributes.symbolize_keys.except(:password).merge({
      status: 200
    })
  end

  def update_user_token
    update_attribute(:token, generate_auth_token)
  end

  protected
    def encrypt_password
      self.password = Digest::SHA1.hexdigest(self.password)
    end


    def remove_user_token
      update_attribute(:token, nil)
    end

    def generate_auth_token
      SecureRandom.uuid.gsub(/\-/,'')
    end
end
