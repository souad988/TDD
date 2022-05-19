
describe 'class solver' do
     before :each do
        @solver = Solver.new
     end
    context 'tests for factorial' do
        it 'return instance of class solver' do
        expect(@solver).to be_instance_of Solver 
        end
        
        it 'factorial accepts one argument' do
        expect(@solver.factorial(0)).to eql 1 
        end
        
        it 'raises an exeption for negative arguments' do
            expect(@solver.factorial(-2)).to raise_exception
        end

        it 'returns 6 as factorial of 3' do
            expect(@solver.factorial(3)).to eql 6
        end

        it 'raises an exception for string value' do
            expect(@solver.factorial("ab")).to raise_exception
        end 
    end

    context 'tests for reverse methode' do
        it 'raise exception for non string values' do
           expect(@solver.reverse(333)).to raise_exception
        end

        it 'reverses hello to be olleh' do
            expect(@solver.reverse('hello')).to eql 'olleh'
        end

        it 'reverses microve\'rse and return esr\'evorcim ' do
            expect(@solver.reverse('microve\'rse')).to eql 'esr\'evorcim'
        end
    end

    context 'tests for fizzbuzz methode' do

        it 'raise an exception for non integer values' do
           expect(@solver.fizzbuzz('55')).to raise_exception
        end

        it 'returns fizz for 6' do
            expect(@solver.fizzbuzz(6)).to eql 'fizz'
        end

        it 'returns fizzbuzz for 15' do
            expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
        end

        it 'returns buzz for 10' do
            expect(@solver.fizzbuzz(10)).to eql 'buzz'
        end

        it 'returns "7" for 7 ' do
            expect(@solver.fizzbuzz(7)).to eql "7"
        end

        it 'returns fizz for -18' do
            expect(@solver.fizzbuzz(-18)).to eql 'fizz'
        end


    end


end