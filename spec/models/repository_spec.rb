require 'rails_helper'

RSpec.describe Language, type: :model do
  let(:repository) { create(:repository) }

  context '#create' do
    it 'if you have a valid name' do
      expect(repository).to be_valid
    end

    it 'will be invalid with null name' do
      repository_2 = build(:repository, name: nil)
      expect(repository_2).to_not be_valid
    end

    it 'will be invalid if your name already exists' do
      repository_2 = build(:repository, name: repository.name)
      expect(repository_2).to_not be_valid
    end

    it 'will be invalid with null description' do
      repository_2 = build(:repository, description: nil)
      expect(repository_2).to_not be_valid
    end

    it 'will be invalid with null language' do
      repository_2 = build(:repository, language_id: nil)
      expect(repository_2).to_not be_valid
    end

    it 'will be invalid with null owner name' do
      repository_2 = build(:repository, owner_name: nil)
      expect(repository_2).to_not be_valid
    end

    it 'will be invalid with null external id' do
      repository_2 = build(:repository, external_id: nil)
      expect(repository_2).to_not be_valid
    end

  end
end
