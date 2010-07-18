module Checkpt
  class Dir < ::Dir
    class << self
      def each
        super do |entry|
          yield CheckPt::File.new(entry)
        end
      end

      def [](args)
        handle_file_list(super(args))
      end

      def glob(patt, flags=0)
        handle_file_list(super(patt, flags))
      end

    private

      def handle_file_list(results)
        results.collect {|entry| Checkpt::File.new(entry)}
      end
    end
  end
end
