# frozen_string_literal: true

module DogeShell
  class ASCII
    def self.display_doge_png
      system("imgcat #{Dir.pwd}/assets/doge.png")
    rescue StandardError
      ''
    end

    def self.hardcore_doge_mdoe
      system("imgcat #{Dir.pwd}/assets/doge.gif")
    rescue StandardError
      ''
    end

    def self.display_doge
      puts '
             ▄              ▄
            ▌▒█           ▄▀▒▌
            ▌▒▒█        ▄▀▒▒▒▐
           ▐▄█▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐
         ▄▄▀▒▒▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐
       ▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌
      ▐▒▒▒▄▄▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▄▒▌
      ▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐
     ▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌
     ▌░▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌
    ▌▒▒▒▄██▄▒▒▒▒▒▒▒▒░░░░░░░░▒▒▒▐
    ▐▒▒▐▄█▄█▌▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▒▌
    ▐▒▒▐▀▐▀▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▐
     ▌▒▒▀▄▄▄▄▄▄▒▒▒▒▒▒▒▒░▒░▒░▒▒▒▌
     ▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▒▄▒▒▐
      ▀▄▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒▄▒▒▒▒▌
        ▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀
          ▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀
             ▀▀▀▀▀▀▀▀▀▀▀▀
      '
    end
  end
end
