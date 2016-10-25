# == Schema Information
#
# Table name: yaumiyah_reports
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  yaumiyah_id :integer
#  date        :date
#  amount      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class YaumiyahReport < ApplicationRecord
  belongs_to :user
  belongs_to :yaumiyah

  validates :yaumiyah_id, uniqueness: {scope: [:user_id, :date]}
end
