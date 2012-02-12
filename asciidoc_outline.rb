if ARGV[0].nil?
  puts "Prints an outline of an asciidoc file."
  puts "Usage: ruby asciidoc_outline.rb <asciidoc file>"
end

pattern = /^(=+)(.*)$/

File.open(ARGV[0]).each_line do |line|
  if matches = line.match(pattern)
    puts ' '*(matches[1].size-2)*3 + matches[2]
  end
end
