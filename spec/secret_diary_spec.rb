require 'secret_diary'

describe Diary do
  context 'Diary is locked' do
    before(:each) do
      subject.lock
    end
    
    describe '#unlock' do
      it 'should unlock the diary' do
        expect { subject.unlock }.to change{subject.locked?}.from(true).to(false)
      end
    end
  end

  context 'Diary is unlocked' do
    describe '#lock' do
      it 'should lock the diary' do
        expect { subject.lock }.to change{subject.locked?}.from(false).to(true)
      end
    end
  end
end
