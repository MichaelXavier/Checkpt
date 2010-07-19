Given %(I am in an existing repository) do
  stub(Checkpt::CLI::Main.load_state) {default_config}
end

Given %(the repository has the following files:) do |table|
  state = table.hashes.rows.collect {|r| Checkpt::File.new(row['path'])}
  Checkpt::CLI::Main.instance_variable_set("@state", state)
end

def default_config
  []
end
