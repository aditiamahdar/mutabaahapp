# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  murabbi_id :integer
#  start_at   :date
#  end_at     :date
#  region     :string
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Group < ApplicationRecord
  belongs_to :murabbi, class_name: 'User'
  has_many :group_users
  has_many :users, through: :group_users
end
