module Container
  class Configuration
    def call
      configuration = ROM::Configuration.new(:sql, "postgres://localhost/products", extensions: [:pg_json])
      configuration.auto_registration('./lib/persistence')
      configuration.gateways[:default].use_logger(Logger.new($stdout))
      ROM.container(configuration, not_inferrable_relations: %i[schema_migrations])
    end
  end

  class Rom
    include Dependency

    dependency :rom, Container::Configuration

    def call
      rom.()
    end

    def self.call
      instance = self.build
      @instance ||= instance.()
    end

    def self.build
      instance = self.new
      instance.rom = Container::Configuration.new
      instance
    end
  end
end
