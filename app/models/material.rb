# == Schema Information
#
# Table name: materials
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Material < ApplicationRecord
  has_many :product_materials, dependent: :destroy
  has_many :products, through: :product_materials
end
