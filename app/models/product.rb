# == Schema Information
#
# Table name: products
#
#  id          :uuid             not null, primary key
#  name        :string           not null
#  description :string           not null
#  price       :string           not null
#  category_id :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
  belongs_to :category
  has_many :product_materials
  has_many :materials, through: :product_materials
end
