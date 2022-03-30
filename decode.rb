@morse_code = {
	".-" => "a",
	"-..." => "b",
	"-.-." => "c",
  "-.." => "d",
  "." => "e",
  "..-." => "f",
  "--." => "g",
  "...." => "h",
  ".." => "i",
  ".---" => "j",
  "-.-" => "k",
  ".-.." => "l",
  "--" => "m",
  "-." => "n",
  "---" => "o",
  ".--." => "p",
  "--.-" => "q",
  ".-." => "r",
  "..." => "s",
  "-" => "t",
  "..-" => "u",
  "...-" => "v",
  ".--" => "w",
  "-..-" => "x",
  "-.--" => "y",
  "--.." => "z",
}

def decode_char (char) 
return @morse_code[char].upcase
end


def decode_word (word) 
	trs_word = ""
	 word.split(" ").each {
		 |char| 
		 trs_word.concat(decode_char(char))
	 }
	 return trs_word
end

def decode(phrase)
  trs_phrase = ""
  phrase.split("   ").each {
    |word|
    trs_phrase.concat(decode_word(word)).concat(" ")
  }
  return trs_phrase
end

puts decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# A BOX FULL OF RUBIES
