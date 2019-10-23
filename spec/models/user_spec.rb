require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(first_name: "some_first", last_name: "some_last", email: "some_email", password: "some_password", password_confirmation: "some_password") } 

  describe "Validations" do

    it "is valid with valid attributes" do  
      expect(subject).to be_valid
      expect(subject.errors).to be_empty
    end

    it "is not valid without a first name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:first_name]).to_not be_empty
    end

    it "is not valid without a last name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:last_name]).to_not be_empty
    end

    it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
      expect(subject.errors[:email]).to_not be_empty
    end

    it "is not valid without a password and password_confirmation different" do
      subject.password = "some_password1"
      subject.password_confirmation = "some_password2"
      expect(subject).to_not be_valid
      expect(subject.errors[:password_confirmation]).to_not be_empty
    end

    it "is not valid without a password with length less than 3" do
      subject.password = "so"
      subject.password_confirmation = "so"
      expect(subject).to_not be_valid
      expect(subject.errors[:password]).to_not be_empty
    end

    it "email can't be similar to other email in the database" do
      subject2 = described_class.create!(first_name: "some_first2", last_name: "some_last2", email: "some_email", password: "some_password2", password_confirmation: "some_password2") 
      expect(subject).to_not be_valid
      expect(subject.errors[:email]).to_not be_empty
    end

    it "email can't be similar to other email in the database with different email capitalization" do
      subject2 = described_class.create!(first_name: "some_first2", last_name: "some_last2", email: "soMe_email", password: "some_password2", password_confirmation: "some_password2") 
      expect(subject).to_not be_valid
      expect(subject.errors[:email]).to_not be_empty
    end 

    describe '.authenticate_with_credentials' do
      it "return user if is succesfully authenticated" do
        user = User.authenticate_with_credentials("some_email", "some_password")
        expect(subject).eql? user
        end

      it "password can't be different as the one register" do
      user = User.authenticate_with_credentials("some_email", "another_password")
      expect(user).eql? nil
      end

      it "email with spaces should be valid" do
        user = User.authenticate_with_credentials("some_email  ", "some_password")
        expect(user).eql? user
      end

      it "email should be case insensitive" do
        user = User.authenticate_with_credentials("soMe_email  ", "some_password")
        expect(user).eql? user
      end
    end

  end
end

