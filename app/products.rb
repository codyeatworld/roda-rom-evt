module App
  class Products < Roda
    plugin :multi_route
    plugin :json, classes: [Hash]

    route do |r|
      r.multi_route

      r.root do
        "Hello world!"
      end
    end

    Dir['./routes/*.rb'].each { |file| require file }
  end
end


