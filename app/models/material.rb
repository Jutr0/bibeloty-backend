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
end
