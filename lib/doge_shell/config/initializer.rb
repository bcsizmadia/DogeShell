# frozen_string_literal: true

module DogeShell
  class ConfigInitializer
    def initialize
      create_config_directory
      initialize_config_file
    end

    private

    def create_config_directory
      Dir.mkdir("#{Dir.home}/.config") unless Dir.exist?("#{Dir.home}/.config")
      Dir.mkdir(CONFIG_DIR) unless Dir.exist?(CONFIG_DIR)
    end

    def initialize_config_file
      return if File.exist?(CONFIG_FILE)

      File.write(CONFIG_FILE, DEFAULT_CONFIG.map { |k, v| "#{k}=#{v}" }.join("\n"))
    end
  end
end
