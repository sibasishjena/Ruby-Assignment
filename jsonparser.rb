require 'json'
require 'pp'
#print "Enter file name: "
#fileName=gets.chomp
file=File.open("exampleJson.txt")
jsonString=file.read
#puts jsonString
parsed=JSON.parse(jsonString)
p1=JSON.pretty_generate(parsed)
puts p1
#puts parsed["glossary"]["title"]
puts "Enter the JSON path: "
searchString=gets.chomp
if(searchString=='.')
    puts p1
else
    searchArray=searchString.split('.')
    flag=true
    searchArray.each do |i|
        if !(parsed.is_a?(Hash) and parsed.keys.include?i)
            flag=false
            break
        else
            parsed=parsed[i]
        end
    end
    if(flag)
        if(parsed.is_a? Hash)
            puts JSON.pretty_generate(parsed.values)
        else
            puts parsed
        end
    else
        puts "Invalid"
    end
end
#puts searchString.split('.')