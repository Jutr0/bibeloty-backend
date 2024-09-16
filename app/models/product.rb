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
  has_many :product_materials, dependent: :destroy
  has_many :materials, through: :product_materials
  has_many :product_documents, dependent: :destroy
  has_many :documents, through: :product_documents

  accepts_nested_attributes_for :materials
  accepts_nested_attributes_for :product_materials
  accepts_nested_attributes_for :product_documents, allow_destroy: true

end
