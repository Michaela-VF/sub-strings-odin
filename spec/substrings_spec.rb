require_relative '../lib/substrings.rb'
    
RSpec.describe 'substrings' do
    let(:dictionary) do 
        ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    end #defining dictionary here so it's used by all it expresionas instead of repeating it under each of them
    
    it 'checks case insensitively how many strings from dictionary appear in text for one word text' do
    expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
    end

    it 'checks case insensitively how many strings from dictionary appear in text when text is more than 1 word' do
        expect(substrings("bElow", dictionary)).to eq({ "below" => 1, "low" => 1 })
    end
end

