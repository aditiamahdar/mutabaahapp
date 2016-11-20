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
#  category    :integer
#

class Muwashafat < ApplicationRecord
  # level => 0, 1, 2, 3, 4, 5
  enum level: [:tamhidi, :muayyid, :muntasib, :muntazim, :ahli, :paripurna]
  # category => 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
  enum category: [:salimul_aqidah, :shahihul_ibadah, :matiinul_khuluq,
    :qadirun_alal_kasbi, :mutsaqqaful_fikri, :qawiyyul_jismi, :mujahidun_linafsihi,
    :munazhzham_fi_syuunihi, :harishun_ala_waqtihi, :nafiun_li_ghairihi]

  has_many :muwashafat_users
  has_many :users, through: :muwashafat_users

  validates :name, uniqueness: {scope: :category}

  def self.get_status(current_user_id)
    select('m.id, m.name, m.level, m.category, m.description, mu.status, mu.note')
      .from('muwashafats AS m')
      .joins("LEFT JOIN muwashafat_users AS mu ON
        (m.id = mu.muwashafat_id and mu.user_id = #{current_user_id})")
  end

  def api_response
    attributes.symbolize_keys
  end
end
