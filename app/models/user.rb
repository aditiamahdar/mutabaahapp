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

class User < ApplicationRecord
  has_many :muwashafat_users
  has_many :muwashafats, through: :muwashafat_users
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :group_binaan, foreign_key: :murabbi_id, class_name: 'Group'
  has_many :yaumiyah_reports
  has_many :yaumiyahs, through: :yaumiyah_reports
end
