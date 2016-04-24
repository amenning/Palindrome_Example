require './palindrome'

describe Palindrome do
	it "accepts a string upon initialization" do
		test = Palindrome.new("ABBA")
		expect(test.string).not_to be_nil
	end
	
	it "only accepts strings with letters" do
		expect { test = Palindrome.new("1!t*ajskdfl \[]") }.to output("You must only enter letters; no symbols\n").to_stdout
	end
	
	it "correctly identifies an even palindrome" do
		test = Palindrome.new('ABBA')
		expect(test.is_palindrome).to be true
	end
	
	it "correctly identifies an odd palindrome" do
		test = Palindrome.new('ABCBA')
		expect(test.is_palindrome).to be true
	end
	
	it "correctly identifies an even word as not a palindrome" do
		test = Palindrome.new('ABCD')
		expect(test.is_palindrome).to be false
	end
	
	it "correctly identifies an odd word as not a palindrome" do
		test = Palindrome.new('ABCDE')
		expect(test.is_palindrome).to be false
	end	
	
	it "does not care about letter case and correctly identifies even palindrome" do
		test = Palindrome.new('AbBa')
		expect(test.is_palindrome).to be true
	end
	
	it "does not care about letter case and correctly identifies odd palindrome" do
		test = Palindrome.new('AbcBa')
		expect(test.is_palindrome).to be true
	end

	it "allows to read string variable after initialization" do
		test = Palindrome.new('abba')
		expect(test.string).to eq('abba')
	end
	
	it "does not allow to write to string after initialization" do
		test = Palindrome.new('abba')
		expect { test.string = 'test' }.to raise_error(NoMethodError)
	end

	it "allows to read is_palindrome variable after initialization" do
		test = Palindrome.new('abba')
		expect(test.is_palindrome).to be true
	end
	
	it "does not allow to write to is_palindrome after initialization" do
		test = Palindrome.new('abba')
		expect { test.is_palindrome = false }.to raise_error(NoMethodError)
	end
end