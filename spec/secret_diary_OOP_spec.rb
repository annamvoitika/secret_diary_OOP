require 'secret_diary_OOP'
describe SecretDiary do

  it 'can be locked' do
  diary = SecretDiary.new
  expect(diary).to respond_to(:lock)
end

  it 'can be unlocked' do
    diary = SecretDiary.new
    expect(diary).to respond_to(:unlock)
  end

  it 'can add entry when unlocked' do
    diary = SecretDiary.new
    diary.unlock
    expect(diary.new_entry).to eq 'Entry added'
  end

  it 'can not add entry when locked' do
    diary = SecretDiary.new
    expect{ diary.new_entry }.to raise_error ('Locked')
  end

  it 'can get entries' do
    diary = SecretDiary.new
    diary.unlock
    expect(diary).to respond_to(:get_entries)
  end
end
