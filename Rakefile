require "bundler/setup"

task :default do
  $:.unshift File.expand_path("../test", __FILE__)

  require "minitest/unit"

  Dir.chdir("test") do
    Dir["**/*_test.rb"].each do |test|
      require test
    end
  end

  require "tlo/autorun"
end
