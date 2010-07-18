module Checkpt
  class File
    attr_accessor :path, :last_action
    attr_reader :status
    STATUSES = [:unopened, :started, :completed]

    def initialize(path)
      @path = path
      @status ||= :unopened
    end

    def status=(s)
      raise ArgumentError, "Invalid status" unless STATUSES.include? s
      @status = s
    end

    def to_yml
      YAML.dump({:status => status, :path => path, :last_action => last_action})
    end
  end
end
