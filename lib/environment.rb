require_relative "./cocktailCLI/version"
require_relative "./cocktailCLI/cli"
require_relative "./cocktailCLI/api"
require_relative "./cocktailCLI/drinks"
require_relative "./cocktailCLI/alcohol"

require "pry"
require "httparty"




module Cocktailcli
  class Error < StandardError; end
end
