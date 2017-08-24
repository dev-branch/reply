# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  value      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Label < ApplicationRecord
  has_and_belongs_to_many :messages
end
