# frozen_string_literal: true

require 'open3'
require 'readline'

require_relative 'doge_shell/colorize'
require_relative 'doge_shell/ascii'
require_relative 'doge_shell/shell'
require_relative 'doge_shell/git'

module DogeShell
  VERSION = '0.1.0'
  CONFIG_DIR = "#{Dir.home}/.config/doge_shell"
  HISTORY_FILE = File.expand_path("#{CONFIG_DIR}/.doge_history")
  CONFIG_FILE = File.expand_path("#{CONFIG_DIR}/.dogerc")

  def self.create_condig_dir
    Dir.mkdir("#{Dir.home}/.config") unless Dir.exist?("#{Dir.home}/.config")
    Dir.mkdir(DogeShell::CONFIG_DIR) unless Dir.exist?(DogeShell::CONFIG_DIR)
  end
end
