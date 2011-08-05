File.open("own.coll") do |file|
  file.each_line do |line|
    count = line.split(" ")[0].to_i
    if count > 4
      excess = count - 4
      card = line.split("[")[0].split(" ")[1..-1].join(" ")
      unless %w(Forest Island Plains Swamp Mountain).include? card
        puts "#{excess}x #{card}"
      end
    end
  end
end