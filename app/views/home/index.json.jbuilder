json.bestsellers do
  json.array! @bestsellers do |bestseller|
    json.partial! "admin/products/product", product: bestseller
    json.extract! bestseller, :price
    json.materials bestseller.materials do |material|
      json.extract! material, :id, :name
    end
    json.main_image do
      json.extract! bestseller.main_image.document, :url
    end
  end
end