def decode_char(morse_code)
  morse_dic = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_dic[morse_code]
end

def decode_word(morse_word)
  str = ''
  splited_arr = morse_word.split
  splited_arr.each do |character|
    str += decode_char(character)
  end
  str
end

def decode_sentence(morse_sent)
  str = ''
  splited_arr = morse_sent.split('   ')
  splited_arr.each do |sentence|
    str += decode_word(sentence)
    str += ' '
  end
  str.strip
end

puts decode_char('.-')
puts decode_sentence('-- -.--   -. .- -- .')
puts decode_word('.-. ..- -... -.--')
puts decode_sentence('-.-. --- -.. .. -. --.   .-- .. - ....   .-. ..- -... -.--')
puts decode_sentence('.-. ..- -... -.--   .. ...   ..-. ..- -.')
