# == Schema Information
#
# Table name: product_materials
#
#  id          :uuid             not null, primary key
#  material_id :uuid             not null
#  product_id  :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ProductMaterialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
