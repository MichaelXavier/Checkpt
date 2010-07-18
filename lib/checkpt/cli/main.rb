module Checkpt
  module CLI
    class Main
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
