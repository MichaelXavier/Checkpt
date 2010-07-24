Given %(I am in an existing repository) do
  @input, @output = StringIO.new, StringIO.new
  stub(Checkpt::CLI::Main.load_state) {default_config}
  FileUtils.touch('.checkpt.yml')
end

Given %(the repository has the following files:) do |table|
  state = table.hashes.rows.collect {|r| Checkpt::File.new(row['path'])}
  Checkpt::CLI::Main.instance_variable_set("@state", state)
end

Then /^Then the checkpt file should have the following files in it:$/ do |table|
  table.hashes.each do |row|
    #TODO, the arr should be converted to File instances or something. ensure
    #that happens then iterate and assert on the given attrs
  end
end

def default_config
  []
end
