# frozen_string_literal: true

module DogeShell
  class Git
    def self.git_branch
      branch, = Open3.capture3('git symbolic-ref --short HEAD 2>/dev/null')
      branch.strip!
      " [such many git: #{branch}]"
    rescue StandardError
      ''
    end
  end
end
