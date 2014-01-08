class Spinach::Features::TestHowSpinachWorks < Spinach::FeatureSteps
  step 'I have an empty array' do
    @array = Array.new
    # pending 'step not implemented'
  end

  step 'I append my first name and my last name to it' do
    @array += ["John", "Doe"]
    # pending 'step not implemented'
  end

  step 'I pass it to my super-duper method' do
    @output = capture_output do
      Greeter.greet(@array)
    end
    # pending 'step not implemented'
  end

  step 'the output should contain a formal greeting' do
    @output.must_include "Hello, mr. John Doe"
    # pending 'step not implemented'
  end

  step 'I append only my last name to it' do
    @array += ["John"]
    # pending 'step not implemented'
  end

  step 'the output should contain a casual greeting' do
    @output.must_include "Yo, John! Whhussup, ya shithead?"# pending 'step not implemented'
  end

  private
  def capture_output
    out = StringIO.new
    $stdout = out
    $stderr = out
    yield
    $stdout = STDOUT 
    $stderr = STDERR
    out.string
  end
end

module Greeter
  def self.greet(name)
    if name.length >1
      puts "Hello, mr. #{name.join(' ')}"
    else
      puts "Yo, #{name.first}! Whhussup, ya shithead?"
    end
  end
end

