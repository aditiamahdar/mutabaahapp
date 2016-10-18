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

require 'test_helper'

class MuwashafatUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
