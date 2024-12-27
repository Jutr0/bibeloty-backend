# == Schema Information
#
# Table name: sections
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  order      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Section < ApplicationRecord
  has_many :products
  before_validation :defaults

  private

  def defaults
    self.order ||= (Section.maximum(:order) || 0) + 1
  end
end
