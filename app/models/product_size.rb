# == Schema Information
#
# Table name: product_sizes
#
#  id         :uuid             not null, primary key
#  product_id :uuid             not null
#  size       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ProductSize < ApplicationRecord
  belongs_to :product
end
