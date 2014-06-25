require 'number_rotation'
describe NumberRotation do
 it 'one digit numbers returns same number' do
    rotation = NumberRotation.new
    actual = rotation.reverse_number(1)
    expected = 1
    expect(actual).to eq(expected)
 end
 it 'two different digits numbers returns switched digits on number' do
	rotation = NumberRotation.new
	actual = rotation.reverse_number(12)
	expected = 21
	expect(actual).to eq(expected)
 end
 it 'two (same)digits numbers returns same number' do
 	rotation = NumberRotation.new
	actual = rotation.reverse_number(33)
	expected = 33
	expect(actual).to eq(expected)
 end
 it 'three (same)digits numbers returns same number' do
 	rotation = NumberRotation.new
	actual = rotation.reverse_number(333)
	expected = 333
	expect(actual).to eq(expected)
 end
 it 'three different digits numbers returns first and last switched' do
 	rotation = NumberRotation.new
	actual = rotation.reverse_number(123)
	expected = 321
	expect(actual).to eq(expected)
 end
 it 'four different digits numbers returns reverse number' do
 	rotation = NumberRotation.new
	actual = rotation.reverse_number(1234)
	expected = 4321
	expect(actual).to eq(expected)
 end
 it 'rotating right returns a number starting on the second digit, then the rest of the number, then the first digit' do
	rotation = NumberRotation.new
	actual = rotation.rotate_right(12345)
	expected = 23451
	expect(actual).to eq(expected)
 end
 it 'rotating left returns a number with last digit first then the rest of the number' do
	rotation = NumberRotation.new
	actual = rotation.rotate_left(12345)
	expected = 51234
	expect(actual).to eq(expected)
 end
 it 'rotating right n digits returns 
		number starting on n + 1, then the rest of the number, then n' do
	rotation = NumberRotation.new
	actual = rotation.rotate_right(12345,3)
	expected= 45123
	expect(actual).to eq(expected)
 end
 
 
 end