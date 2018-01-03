#code-trust.rb
# Written by : Vladimir Pavlychev https://github.com/KeyJoo


def colorize(text, color = "default", bgColor = "default")
    
    colors = {  "default" => "38",
                "black" => "30",
                "red" => "31",
                "green" => "32",
                "brown" => "33", 
                "blue" => "34", 
                "purple" => "35",
                "cyan" => "36", 
                "gray" => "37", 
                "dark gray" => "1;30", 
                "light red" => "1;31", 
                "light green" => "1;32", 
                "yellow" => "1;33",
                "light blue" => "1;34", 
                "light purple" => "1;35", 
                "light cyan" => "1;36", 
                "white" => "1;37"}

    bgColors = {"default" => "0", 
                "black" => "40", 
                "red" => "41", 
                "green" => "42", 
                "brown" => "43", 
                "blue" => "44",
                "purple" => "45", 
                "cyan" => "46", 
                "gray" => "47", 
                "dark gray" => "100", 
                "light red" => "101", 
                "light green" => "102",
                "yellow" => "103", 
                "light blue" => "104", 
                "light purple" => "105", 
                "light cyan" => "106", 
                "white" => "107"}
    
    color_code = colors[color]
    bgColor_code = bgColors[bgColor]
    
    return "\033[#{bgColor_code};#{color_code}m#{text}\033[0m"
end

cls = "clear"
system "#{cls}"
sleep 0.6

puts "#{colorize("In ","green")}" + "#{colorize(" Code ", "white","light red")}" + "#{colorize(" We ","green")}" + "#{colorize("Trust", "yellow")}"
sleep 1

YearText = ["#{colorize(" Happy ", "white","light red")}", " New ", "Year ", "#{colorize("2018", "yellow")}"]

puts YearText[0..3].join

sleep 3

IO.popen("clear") { |f| puts f.gets }
puts "#{colorize(" To be continued ... ", "white","light blue")}"