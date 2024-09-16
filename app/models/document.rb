# == Schema Information
#
# Table name: documents
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Document < ApplicationRecord
  has_one_attached :file

  def url
    Rails.application.routes.url_helpers.rails_blob_url(file) if file.attached?
  end

  def name
    file.attached? ? file.filename.to_s : 'Untitled'
  end
end
