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
return @morse_code[char]
end


def decode_word (word) 
	trs_word = ""
	 word.split(" ").each {
		 |char| 
		 trs_word.concat(decode_char(char))
	 }
	 return trs_word
end
decode_word("-- -.--")
