File.open(ARGV[0] || "own.coll") do |file|
  file.each_line do |line|
    count = line.split(" ")[0].to_i
    if count > 4
      excess = count - 4
      card = line.split(" ")[1..-1].join(" ")
      unless card.match(/Forest|Plains|Mountain|Island|Swamp/)
        puts "#{excess} #{card}"
      end
    end
  end
end