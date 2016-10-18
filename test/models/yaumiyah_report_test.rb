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

require 'test_helper'

class YaumiyahReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
