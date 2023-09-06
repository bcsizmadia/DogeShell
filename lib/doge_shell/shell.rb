# frozen_string_literal: true

module DogeShell
  class Shell
    def initialize
      configuration = ConfigParser.new.parse

      @doge_mode = configuration['doge_mode']
      @opening_message = configuration['opening_message']

      Arts.display_doge_png if configuration['display_doge_png']
      Arts.display_doge if configuration['display_doge_ascii']
      start
    end

    def start
      puts @opening_message
      loop do
        user_input = Readline.readline("doge#{prompt}$ ", true)
        command, *args = user_input.split

        case command
        when 'cd'
          Dir.chdir(args.join(' '))
        when 'ls'
          puts Dir.entries('.').join(' ')
        when 'run'
          run_script(args.join(' '))
        when 'dogemode'
          @doge_mode = !@doge_mode
          puts @doge_mode ? 'Doge mode activated! Much wow!' : 'Doge mode deactivated! So sad!'
        when 'hardcore'
          Arts.hardcore_doge_mode
        when 'exit'
          break
        else
          execute_command(command, args)
        end
      end
    end

    private

    def doge_phrase
      [
        'Such execute. Much command.',
        'Wow. So code.',
        'Many loop. Such recursion.',
        'So syntax. Much highlight.',
        'Wow. Many command.',
        'So ASCII. Much art.'
      ].sample
    end

    def run_script(filename)
      File.readlines(filename).each do |line|
        execute_command(*line.strip.split)
      end
    rescue StandardError => e
      puts "Failed to run script: #{e.message}"
    end

    def execute_command(command, args)
      if @doge_mode
        puts Colors.yellow(doge_phrase)
        return
      end
      stdout, stderr = Open3.capture3(command, *args)
      puts stdout if stdout
      puts Colors.red(stderr) if stderr
    rescue StandardError
      puts Colors.red("Command not found: #{command}")
    end

    def prompt
      git_branch = Colors.green(Git.git_branch)
      doge_mode_status = @doge_mode ? Colors.red('DOGE_MODE ') : ''
      [git_branch, doge_mode_status].reject(&:empty?).join(' ')
    end
  end
end
