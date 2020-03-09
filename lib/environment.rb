require_relative "./cocktailCLI/version"
require_relative "./cocktailCLI/cli"
require_relative "./cocktailCLI/api"
require_relative "./cocktailCLI/term"
require_relative "./cocktailCLI/drinks"

require "pry"
require "httparty"




module Cocktailcli
  class Error < StandardError; end
  # Your code goes here...
end
