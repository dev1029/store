guard 'rspec', :version => 2 do
  watch(%r{^spec/.+_spec\.rb$})

  watch('spec/spec_helper.rb') { "spec" }

  watch(%r{^app/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }

  watch(%r{^spec/fabricators/(.+)\.rb$}) { "spec" }
end

guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('Gemfile')
  watch('Gemfile.lock')

  watch('config/application.rb')
  watch('config/environment.rb')

  watch(%r{^config/environments/.+\.rb$})
  watch(%r{^config/initializers/.+\.rb$})

  watch('spec/spec_helper.rb') { :rspec }
end
