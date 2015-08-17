require 'rails_helper'

describe User do
  it 'validates email uniqueness' do
    user = User.create user_name: 'chris', email: 'test@example.com'
    dup_user = User.create user_name: 'bob', email: 'test@example.com'
    dup_user.valid?
    expect(dup_user.errors[:email].present?).to eq(true)
  end

  it 'validates user_name uniqueness' do
    user = User.create email: 'test@example.com', user_name: 'bob'
    dup_user = User.create email: 'test2@example.com', user_name: 'bob'
    dup_user.valid?
    expect(dup_user.errors[:user_name].present?).to eq(true)
  end
end
