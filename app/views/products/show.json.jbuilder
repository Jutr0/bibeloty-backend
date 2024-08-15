json.partial! "products/product", product: @product
json.extract! @product, :description, :price
json.category do
  json.extract! @product.category, :id, :name
end
json.materials @product.materials do |material|
  json.extract! material, :id, :name
end