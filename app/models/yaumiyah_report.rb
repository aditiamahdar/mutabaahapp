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

  def self.get_last_update(month, year)
    select(:updated_at).where('EXTRACT(MONTH FROM updated_at) = ? AND EXTRACT(YEAR FROM updated_at) = ?', month, year).order(updated_at: :desc).first.updated_at
  end

  def self.monthly_report(user_id, month, year)
    select('yr.yaumiyah_id AS id', 'y.name', 'SUM(yr.amount) AS total').from('yaumiyah_reports AS yr').joins("LEFT JOIN yaumiyahs AS y ON (y.id = yr.yaumiyah_id)").where('yr.user_id = ? AND EXTRACT(MONTH FROM yr.updated_at) = ? AND EXTRACT(YEAR FROM yr.updated_at) = ?', user_id, month, year).group('yr.yaumiyah_id', 'y.name')
  end
end
