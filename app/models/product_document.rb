# == Schema Information
#
# Table name: product_documents
#
#  id          :uuid             not null, primary key
#  document_id :uuid             not null
#  product_id  :uuid             not null
#  position    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ProductDocument < ApplicationRecord
  belongs_to :document
  belongs_to :product
end
