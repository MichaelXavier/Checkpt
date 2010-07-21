When /^I run "(.*)"$/ do |cmd|
  @input.truncate(0)
  @output.truncate(0)
  Checkpt::CLI::Main.new(cmd, @input, @output).run
end

Then /^I should see "(.*)"$/ do |txt|
  @output.should include(txt)
end
