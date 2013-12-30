module Storyboard::Builder
  class GIF
    attr_accessor :parent
    def initialize(parent)
      @parent = parent
    end

    def run(scanfor='*.jpg')
      scanpath = File.join(@parent.workdirectory, scanfor)
      writepath = File.join(@parent.options['_output_director'], "a.gif")
      delay = 12
      Storyboard::Binaries.convert("-layers", "OptimizeTransparency", "+map", "-coalesce", scanpath, writepath)
    end
  end
end