# == Schema Information
#
# Table name: materials
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Material < ApplicationRecord
  has_many :product_materials
  has_many :products, through: :product_materials
end
