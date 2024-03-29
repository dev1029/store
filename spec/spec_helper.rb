require 'rubygems'
require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'

  require File.expand_path("../../config/environment", __FILE__)

  require 'rspec/rails'
  require 'rspec/autorun'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.include SunspotMatchers

    config.infer_base_class_for_anonymous_controllers = false

    config.use_transactional_fixtures = true

    config.before :all do
      Sunspot.session = SunspotMatchers::SunspotSessionSpy.new(Sunspot.session)
    end
  end
end

Spork.each_run do
end

