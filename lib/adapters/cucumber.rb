$failed_cucumber_specs = 0

After do |scenario|
  if(scenario.failed?)
    $failed_cucumber_specs += 1
    `notify-send "Cucumber: #{scenario.exception.class}", "#{scenario.exception.message.gsub(/"/, "'")}"`
  end
end

at_exit do
  if $failed_cucumber_specs == 0
    `notify-send "Cucumber: no failed specs", "No failed specs"`
  else
    `notify-send "Cucumber: #{$failed_cucumber_specs} failed specs", "#{$failed_cucumber_specs} failed specs"`
  end
end


require 'cucumber/formatter/pretty'

class NotifyOSDCucumberFormatter < Cucumber::Formatter::Pretty
  def exception(exception, status)
    super(exception, status)
    `notify-send "Cucumber: #{exception.class}", "#{exception.message.gsub(/("|`)/, "'")}"`
  end
end
