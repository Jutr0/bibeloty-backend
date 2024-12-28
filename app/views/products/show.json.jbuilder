json.extract! @product, :id, :name, :description, :price
json.materials @product.materials do |material|
  json.extract! material, :name
  end
json.sizes @product.product_sizes do |product_size|
  json.extract! product_size, :size
end
json.product_documents @product.product_documents do |product_document|
  json.extract! product_document, :position
  json.document do
    json.extract! product_document.document, :name, :url
  end
end