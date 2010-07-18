module Checkpt
  module CLI
    class Command
      attr_accessor :input, :output, :error, :output_file

      def initialize(args, input, output, error)
        @args, @input, @output, @error = args, input, output, error
        @output_file = DEFAULT_OUTPUT_FILE
        load_file
      end


    private
      def load_file
        @data = YAML.load_file(@output_file) 
      end

      def write_file
        YAML.dump(@data, @output_file)
      end
    end
  end
end
