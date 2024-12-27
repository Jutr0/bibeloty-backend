json.array! @products_sections do |section, products|
  json.extract! section, :name

  json.products products do |product|
    json.extract! product, :price, :name

    if product.main_image.present?
      json.main_image do
        json.extract! product.main_image.document, :url
      end
    end
  end
end
