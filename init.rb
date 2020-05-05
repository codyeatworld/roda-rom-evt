require "roda"
require "rom"
require "rom-repository"
require "rom-sql"
require "dependency"
require 'pry'
require "logger"

require_relative "./lib/container"
require_relative "./app/products"

require_relative "./lib/persistence/relations/products"
require_relative "./lib/persistence/repositories/products"
