require "mega_lotto/version"
require "mega_lotto/configuration"
require "mega_lotto/drawing"

begin
  require "pry"
rescue LoadError
end

module MegaLotto
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new

  def self.configure
    yield(configuration)
  end
end
