=begin
RSpec.configure do |c|
  c.after(:all) do
    if example.exception
      `notify-send "Rspec", "#{example.exception.message}"`
    end
  end
end
=end

class FailureReporter < RSpec::Core::Formatters::ProgressFormatter
  def example_failed(example)
    super(example)
    `notify-send "Rspec: #{example.full_description}", "#{example.execution_result[:exception].message}"`
  end
end

RSpec.configure do |c|
  c.add_formatter FailureReporter
end
