require 'peeps'
RSpec.describe Peeps do
    describe '.all' do
        it 'returns all peeps' do
            connection = PG.connect(dbname: 'chitter_test')
            connection.exec("INSERT INTO peeps (message) VALUES ('Hello, I am a peep');")
            connection.exec("INSERT INTO peeps (message) VALUES ('I am also a peep');")
            connection.exec("INSERT INTO peeps (message) VALUES ('Also a peep');")

            peeps = Peeps.all
            expect(peeps).to include ("Hello, I am peep")
            expect(peeps).to include ("I am also a peep")
            expect(peeps).to include ("Also a peep")
        end
    end
    describe '.add' do
        it 'add a new message' do
            Peeps.add(message: 'Hello!')
            expect(Peeps.add).to include 'Hello!'
        end
    end
end