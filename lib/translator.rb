require "yaml"


def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon = {}

  emoticon["get_emoticon"] = {}
  emoticon["get_meaning"] = {}

  emoticons.each do |english_word, emoticon_set|
    emoticon["get_emoticon"][emoticon_set[0]] = emoticon_set[1]
    emoticon["get_meaning"][emoticon_set[1]] = english_word
  end
  emoticon
end

def get_japanese_emoticon(path, emoticon)
  load_library(path)
end

def get_english_meaning
  # code goes here
end