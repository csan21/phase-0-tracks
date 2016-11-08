require_relative "calculator"

describe Calculator do
	let (:calculator) { Calculator.new }
	
	it "adds method" do
		expect(calculator.add(10, 2)).to eq 12
	end	
end

describe Calculator do
	let (:calculator) { Calculator.new }

	it "subtracts method" do
		expect(calculator.subtract(10, 5)).to eq 5
	end
end