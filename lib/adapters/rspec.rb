class NotifyOSDReporter < RSpec::Core::Formatters::ProgressFormatter
  def initialize(output)
    super(output)
    @failed_specs = 0
  end

  def example_failed(example)
    super(example)
    @failed_specs += 1
    `notify-send "Rspec: #{example.full_description}", "#{example.execution_result[:exception].message.gsub(/"/, "'")}"`
  end

  def close
    if @failed_specs == 0
      `notify-send "Rspec: no failed specs", "No failed specs"`
    else
      `notify-send "Rspec: #{@failed_specs} failed specs", "#{@failed_specs} failed specs"`
    end
  end
end

RSpec.configure do |c|
  c.add_formatter NotifyOSDReporter
end
