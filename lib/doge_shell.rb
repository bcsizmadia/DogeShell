# frozen_string_literal: true

require 'open3'
require 'readline'

require_relative 'doge_shell/config/initializer'
require_relative 'doge_shell/config/parser'
require_relative 'doge_shell/colorize'
require_relative 'doge_shell/arts'
require_relative 'doge_shell/shell'
require_relative 'doge_shell/git'

module DogeShell
  VERSION = '0.1.1'
  CONFIG_DIR = "#{Dir.home}/.config/doge_shell"
  HISTORY_FILE = File.expand_path("#{CONFIG_DIR}/.doge_history")
  CONFIG_FILE = File.expand_path("#{CONFIG_DIR}/.dogerc")

  DEFAULT_CONFIG = {
    'opening_message' => 'Wow. Such shell. Much terminal.',
    'doge_mode' => false,
    'display_doge_png' => true,
    'display_doge_ascii' => false
  }.freeze
end
