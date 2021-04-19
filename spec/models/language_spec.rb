require 'rails_helper'

RSpec.describe Language, type: :model do
  let(:language_1) { create(:language) }

  context '#create' do
    it 'if you have a valid name' do
      expect(language_1).to be_valid
    end

    it 'will be invalid with null name' do
      language_2 = build(:language, name: nil)
      expect(language_2).to_not be_valid
    end

    it 'will be invalid if your name already exists' do
      language_2 = build(:language, name: language_1.name)
      expect(language_2).to_not be_valid
    end
  end
end
