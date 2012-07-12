require "rspec/core"

module TLo
  def self.setup_tests
    suites = MiniTest::Unit::TestCase.test_suites

    suites.each do |suite|
      describe suite.name do
        before do
          @test = suite.new "ohai"
          @test.send(:before_setup) if @test.respond_to?(:before_setup)
          @test.send(:setup) if @test.respond_to?(:setup)
          @test.send(:after_setup) if @test.respond_to?(:after_setup)
        end

        after do
          @test.send(:before_teardown) if @test.respond_to?(:before_teardown)
          @test.send(:teardown) if @test.respond_to?(:teardown)
          @test.send(:after_teardown) if @test.respond_to?(:after_teardown)
        end

        TestTLo.test_methods.each do |method|
          it method do
            @test.send(method)
          end
        end
      end
    end
  end
end

at_exit do
  require "rspec/autorun"
  TLo.setup_tests
end

