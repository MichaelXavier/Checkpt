require 'checkpt/cli/command'
require 'checkpt/cli/add'
require 'checkpt/cli/check'
require 'checkpt/cli/init'
require 'checkpt/cli/last'
require 'checkpt/cli/main'
require 'checkpt/cli/next'
require 'checkpt/cli/progress'
require 'checkpt/cli/remove'
require 'checkpt/cli/status'
require 'checkpt/cli/uncheck'
#TODO

module Checkpt
  module CLI
    SUBCOMMAND_ALIASES = {
      :add      => %w(add a),
      :remove   => %w(remove rm r),
      :status   => %w(status s),
      :check    => %w(check c),
      :uncheck  => %w(uncheck a),
      :next     => %w(next n),
      :last     => %w(last l),
      :progress => %w(progress p)
    }

    SUBCOMMAND_CLASSES = {
      :add      => Add,
      :remove   => Remove,
      :status   => Status,
      :check    => Check,
      :uncheck  => Uncheck,
      :next     => Next,
      :last     => Last,
      :progress => Progress
    }

    DEFAULT_OUTPUT_FILE = '.checkpt'
  end
end
