#puts "Hello, Ruby!"
=begin
For
Multiple line
Comments
=end

=begin
print <<EOF
   This is the first way of creating
   here document ie. multiple line string.
EOF
=end

#CT=100
CT="Go Ruby\nRuby\n"
print CT.gsub(/\s/,"")
puts __FILE__
puts __LINE__