require 'atm'
require 'customer'

describe ATM do
  let(:atm){ATM.new}
  let(:customer){double Customer}

  it 'deliver money when customer account is in credit' do
    # 1. what's the method (ask the question/talking)
    # 2. what arguments (if any?) do we pass
    # 3. what return should there be (if any?)
    expect(atm.withdraw(20, customer)).to eq 20
    # 4. what state changes should we expect
  end

  it 'deducts withdrawal from customer account' do
    # 4. what state changes should we expect
    expect{atm.withdraw(20,customer)}.to change{atm.balance(customer)}.by(-20)
  end




end