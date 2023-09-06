# frozen_string_literal: true

module DogeShell
  class ConfigParser
    def initialize
      config_file = File.expand_path("#{CONFIG_DIR}/.dogerc")
      return unless File.exist?(config_file)

      @config_data = File.read(config_file)
    end

    def parse
      config = {}
      @config_data.lines.each do |line|
        key, value = line.strip.split('=')

        case key.downcase.strip
        when 'opening_message'
          config['opening_message'] = value
        when 'doge_mode'
          config['doge_mode'] = value.downcase.strip == 'true'
        when 'display_doge_png'
          config['display_doge_png'] = value.downcase.strip == 'true'
        when 'display_doge_ascii'
          config['display_doge_ascii'] = value.downcase.strip == 'true'
        end
      end
      config
    end
  end
end
