require 'yaml'
require 'pry'

def load_library(file_path)
  library = {
     "get_emoticon" => {},
     "get_meaning"=> {}
  }
 list = YAML.load_file(file_path)
 list.each do |meaning,value|
   english = value[0]
   japenese = value[1]
   library["get_emoticon"][english] = japenese
   library["get_meaning"][japenese] = meaning
 end
 library
end

def get_japanese_emoticon(file_path, emoticon)
  list = YAML.load_file(file_path)
  list["get_emoticon"].each do |meaning,value|
    if meaning == emoticon
      return value
      
  binding.pry
end
end

def get_english_meaning
  # code goes here
end