require 'peeps'
RSpec.describe Peeps do
    describe '.all' do
        it 'returns all peeps' do
            peeps = Peeps.all
            expect(peeps).to include ("Hello, I am peep")
            expect(peeps).to include ("I am also a peep")
            expect(peeps).to include ("Also a peep")
        end
    end
end