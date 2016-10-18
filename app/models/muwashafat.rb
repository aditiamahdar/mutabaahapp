# == Schema Information
#
# Table name: muwashafats
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  level       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Muwashafat < ApplicationRecord
  enum level: [:tamhidi, :muayyid, :muntasib, :muntazim, :ahli, :paripurna]
end
