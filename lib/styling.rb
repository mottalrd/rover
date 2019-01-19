module Styling

  PROMPT = TTY::Prompt.new

  def puts_fast(str)
    chars = str.split(//)
    chars.each do |c|
      print c
      sleep 0.02
    end
    print "\n"
  end

end
