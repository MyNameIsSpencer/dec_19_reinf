require 'HTTParty'

datamuse_response = HTTParty.get('https://api.datamuse.com/words?sp=initalize')
datamuse_json = JSON.parse(datamuse_response.body)

options = []

datamuse_json.each do |correction|
  options << correction['word']
end

puts options
