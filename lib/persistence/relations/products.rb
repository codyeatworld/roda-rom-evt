module Persistence
  module Relations
    class Products < ROM::Relation[:sql]
      schema(:products, infer: true)
    end
  end
end
