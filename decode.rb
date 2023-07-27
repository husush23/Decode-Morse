def decode_char(morse_code)
morse_to_char = {
  ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
  }
  
 return  morse_to_char[morse_code]
end



 def decode_word(morse_code)
 morse_code.split.map{ |morse| decode_char(morse)}.join
end

def decode(morse_code)
  words = morse_code.split("   ")
  decoded_words = words.map{|word| decode_word(word) }
  decoded_string = decoded_words.join(" ")

end
puts decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

