json.partial! "admin/products/product", product: @product
json.extract! @product, :description, :price
json.category do
  json.extract! @product.category, :id, :name
end
json.materials @product.materials do |material|
  json.extract! material, :id, :name
end
json.product_documents @product.product_documents do |product_document|
  json.extract! product_document, :id, :position
  json.document do
    json.extract! product_document.document, :id, :name, :url
  end
end