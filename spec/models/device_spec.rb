require 'spec_helper'

class Device

  attr_reader :switch_state

  def initialize switch_state
    @switch_state = switch_state
  end

  def switched_on?
    @switch_state
  end

  def switched_off?
    !switched_on?
  end

  def switch_on!
    @switch_state = true
  end

  def switch_off!
    @switch_state = false
  end
end

describe Device do

  context 'when its switched on' do
    let(:device) { Device.new true }

    it 'should remember its initial switch state' do
      expect(device.switched_on?).to be_truthy
      expect(device.switched_off?).to be_falsey
    end

    it 'should be switched on after switching it on' do
      device.switch_on!

      expect(device.switched_on?).to be_truthy
      expect(device.switched_off?).to be_falsey
    end

    it 'should be switched off after switching it off' do
      device.switch_off!

      expect(device.switched_on?).to be_falsey
      expect(device.switched_off?).to be_truthy
    end
  end

  context 'when its switched off' do
    let(:device) { Device.new false }

    it 'should remember its initial switch state' do
      expect(device.switched_off?).to be_truthy
      expect(device.switched_on?).to be_falsey
    end

    it 'should be switched on after switching it on' do
      device.switch_on!

      expect(device.switched_on?).to be_truthy
      expect(device.switched_off?).to be_falsey
    end

    it 'should be switched off after switching it off' do
      device.switch_off!

      expect(device.switched_on?).to be_falsey
      expect(device.switched_off?).to be_truthy
    end
  end
end