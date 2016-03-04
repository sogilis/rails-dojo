require 'rails_helper'

RSpec.describe Activity, type: :model do
  context '#empty?' do
    it 'should be false when description is not empty' do
      expect(Activity.new description: 'Sogiboard').not_to be_empty
    end
    it 'should be true when description is empty' do
      expect(Activity.new description: '').to be_empty
    end
  end
  context '.for_morning' do
    it 'should return morning activity of requested day' do
      day = Time.now
      FactoryGirl.create :activity, day: day, day_half: 'am', description: 'SogiboardAM'
      expect(Activity.for_morning(day.to_date).description).to eq 'SogiboardAM'
    end
  end
  context '.for_afternoon' do
    it 'should return afternoon activity of requested day' do
      day = Time.now
      FactoryGirl.create :activity, day: day, day_half: 'pm', description: 'SogiboardPM'
      expect(Activity.for_afternoon(day.to_date).description).to eq 'SogiboardPM'
    end
  end
end
