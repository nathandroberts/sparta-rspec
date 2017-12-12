require 'spec_helper'

describe 'working through various arrays' do

  context 'standard 1 dimensional arrays' do
    dog_breeds = ['jack russell', 'boxer', 'bloodhound', 'greyhound']

    it 'the first entry should equal jack russel' do
      expect(dog_breeds[0]).to eq("jack russell")
      # Use array methods only
    end

    it 'the last entry should equal greyhound' do
      # Use array methods only
      expect(dog_breeds[-1]).to eq("greyhound")
    end

    it 'the second entry should equal boxer' do
      # Use array index only i.e. array[0]
      expect(dog_breeds[1]).to eq("boxer")
    end

  end

  context 'test 2 dimensional arrays' do

    dog_breed_and_names = [['jack russell', 'archie'],['boxer', 'bruce'],['bloodhound', 'droopy'], ['greyhound', 'streak']]

    it 'the first dog name should equal jack russell' do
      # Use a mix of array methods and indexes
      expect(dog_breed_and_names[0][0]).to eq("jack russell")
    end

    it 'the second last entry should be a bloodhound called droopy' do
      # Use array index only i.e. array[0]
      expect(dog_breed_and_names[-2]).to eq(['bloodhound', 'droopy'])
    end

    it 'the second entry should be a boxer' do
      # Use array index only i.e. array[0]
      expect(dog_breed_and_names[1][0]).to eq("boxer")
    end

  end

  context 'test multidimensional arrays' do
    dog_breed_names_age_and_health = [['jack russell', 'archie',[4, 'healthy']],['boxer', 'bruce',[7,'bad back']],['bloodhound', 'droopy', [6, 'healthy']], ['greyhound', 'streak',[12, 'old dog']]]

    it 'the last dog should be called streak and is an old dog' do
      # Use a mix of array methods and indexes
        expect(dog_breed_names_age_and_health[-1][1]).to eq("streak")
        expect(dog_breed_names_age_and_health[-1][2][1]).to eq("old dog")
    end

    it 'the bloodhound should be 6 years old and healthy' do
      # Use a mix of array methods and indexes
      expect(dog_breed_names_age_and_health[2][2]).to eq([6, 'healthy'])
      # (0..dog_breed_names_age_and_health.length).each do |n|
      #   if dog_breed_names_age_and_health[n][0] = 'bloodhound'
      #     expect(dog_breed_names_age_and_health[n][2]).to eq([6, 'healthyyy'])
      #   end
      # end
    end

    it 'the first dog should be a jack russell and 4 years old' do
      # Use array index only i.e. array[0]
      expect(dog_breed_names_age_and_health[0][0]).to eq("jack russell")
      expect(dog_breed_names_age_and_health[0][2][0]).to eq(4)
    end

  end

end
