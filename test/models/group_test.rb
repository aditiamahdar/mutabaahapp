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

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
