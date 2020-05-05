module App
  class Products
    route "products" do |r|
      r.get do
        rom = Container::Rom.()
        products_repo ||= Persistence::Repositories::Products.new(rom)

        # GET /products
        r.is do
          {
            data: products_repo.all.map(&:to_h)
          }
        end

        # GET /products/create
        r.get "create" do
          product = products_repo.create(name: ["420", "Blaze", "It"].sample)
          {
            data: product.to_h
          }
        end
      end
    end
  end
end
