# == Schema Information
#
# Table name: muwashafat_users
#
#  id            :integer          not null, primary key
#  muwashafat_id :integer
#  user_id       :integer
#  status        :boolean
#  note          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class MuwashafatUser < ApplicationRecord
  belongs_to :muwashafat
  belongs_to :user

  validates :user_id, uniqueness: {scope: :muwashafat_id}
end
