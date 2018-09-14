


require "pry"
def reformat_languages(languages)
  
  new_hash = {}
  languages.each do |style, lang_hsh|
    var = style
  # binding.pry
  
    lang_hsh.each do |language, type|
       #binding.pry
      if new_hash.include? (language)
        new_hash[language][:style] << var
       
      else
        new_hash[language] = type
        new_hash[language][:style] = [var]
      end
    end
  end
  new_hash
end

# {:oo=>{:ruby=>{:type=>"interpreted"}, :javascript=>{:type=>"interpreted"}, :python=>{:type=>"interpreted"}, :java=>{:type=>"compiled"}}, :functional=>{:clojure=>{:type=>"compiled"}, :erlang=>{:type=>"compiled"}, :scala=>{:type=>"compiled"}, :javascript=>{:type=>"interpreted"}}}



# {:ruby=>{:type=>"interpreted", :style=>[:oo]}, :javascript=>{:type=>"interpreted", :style=>[:oo, :functional]}, :python=>{:type=>"interpreted", :style=>[:oo]}, :java=>{:type=>"compiled", :style=>[:oo]}, :clojure=>{:type=>"compiled", :style=>[:functional]}, :erlang=>{:type=>"compiled", :style=>[:functional]}, :scala=>{:type=>"compiled", :style=>[:functional]}}
