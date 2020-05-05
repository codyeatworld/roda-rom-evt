module Persistence
  module Repositories
    class Products < ROM::Repository[:products]
      commands :create, update: :by_pk, delete: :by_pk

      def all
        products.to_a
      end
    end
  end
end
