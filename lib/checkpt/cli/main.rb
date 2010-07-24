module Checkpt
  module CLI
    class Main
      attr_reader :state
      class << self
        def load_state
          @state = YAML.load_file('.checkpt.yml')
        end

        def parser
        end
      end

      #TODO: needs to handle string args for testing purposes
      def initializer(args, input=STDIN, output=STDOUT, error=STDERR)
        @subcmd = args.shift
        @args = args
      end

      def run
        subcmd_class(@subcmd).new(@args, input, output, error).execute
      end

    private

      def subcmd_class(subcmd)
        raise ArgumentError, "Invalid subcommand" unless SUBCOMMAND_ALIASES.values.flatten.include? subcmd
        SUBCOMMAND_CLASSES[subcmd]
      end
    end
  end
end
