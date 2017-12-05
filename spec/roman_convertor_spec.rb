require_relative '../lib/rom_class'
RSpec.describe RomeConverter do
    convertor = RomeConverter.new
	array_dec = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20] 
	array_rom = ["I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII","XIII","XIV","XV","XVI","XVII","XVIII","XIX","XX"]
	i = 0
	loop do 
	break if i == 20
		it "from r to d" do
    	expect(convertor.to_dec(array_rom[i])).to eq(array_dec[i])
    	end
	i++
	end
	i = 0
	loop do 
	break if i == 20
		it "from d to r" do
    	expect(convertor.to_rome(array_dec[i])).to eq(array_rom[i])
    	end
	i++
	end   
end 
