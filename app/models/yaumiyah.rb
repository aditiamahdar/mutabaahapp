# == Schema Information
#
# Table name: yaumiyahs
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Yaumiyah < ApplicationRecord
  has_many :yaumiyah_reports
  has_many :users, through: :yaumiyah_reports
end
