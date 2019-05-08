require 'secret_diary'

describe Diary do
  context 'The diary is locked' do
    before(:each) do
      subject.lock
    end

    describe '#unlock' do
      it 'should unlock the diary' do
        expect { subject.unlock }.to change{subject.locked?}.from(true).to(false)
      end
    end

    describe '#add_entry' do
      it 'should raise an error' do
        message = 'You cannot add entry to a locked diary'
        expect { subject.add_entry }.to raise_error message
      end
    end

    describe '#get_entries' do
      it 'should raise an error' do
        message = 'You cannot get entries to a locked diary'
        expect { subject.get_entries }.to raise_error message
      end
    end
  end

  context 'The diary is unlocked' do
    before(:each) do
      subject.unlock
    end

    describe '#lock' do
      it 'should lock the diary' do
        expect { subject.lock }.to change{subject.locked?}.from(false).to(true)
      end
    end
  end
end
