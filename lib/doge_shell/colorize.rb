# frozen_string_literal: true

module DogeShell
  class Colors
    def self.red(text)
      "\e[31m#{text}\e[0m"
    end

    def self.green(text)
      "\e[32m#{text}\e[0m"
    end

    def self.yellow(text)
      "\e[33m#{text}\e[0m"
    end
  end
end
