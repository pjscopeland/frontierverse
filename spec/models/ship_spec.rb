require 'rails_helper'

RSpec.describe Ship, type: :model do
  let(:interpl) { Drive.new(power: 0, mass:   4) }
  let(:class_1) { Drive.new(power: 1, mass:  10) }
  let(:class_2) { Drive.new(power: 2, mass:  25) }
  let(:class_3) { Drive.new(power: 3, mass:  45) }
  let(:class_4) { Drive.new(power: 4, mass:  80) }
  let(:class_5) { Drive.new(power: 5, mass: 150) }
  let(:class_6) { Drive.new(power: 6, mass: 250) }
  let(:class_7) { Drive.new(power: 7, mass: 400) }
  let(:class_8) { Drive.new(power: 9, mass: 600) }
  let(:milit_1) { Drive.new(power: 1, mass:   6) }
  let(:milit_2) { Drive.new(power: 2, mass:  12) }
  let(:milit_3) { Drive.new(power: 3, mass:  24) }

  describe '#range_with(drive)' do
    # expect(Ship.new(capacity:   60, mass:   75)
    # expect(Ship.new(capacity:  320, mass:  400)
    # expect(Ship.new(capacity:  825, mass: 1000)
    it('mass    8, class 1') { expect(Ship.new(capacity:    4, mass:    8).range_with(milit_1)).to eq  0.00 }
    it('mass   10, class 1') { expect(Ship.new(capacity:    7, mass:   10).range_with(milit_1)).to eq 20.00 }
    it('mass   10, class 2') { expect(Ship.new(capacity:    7, mass:   10).range_with(milit_2)).to eq  0.00 }
    it('mass   28, class 1') { expect(Ship.new(capacity:   22, mass:   28).range_with(class_1)).to eq  7.14 }
    it('mass   28, class 2') { expect(Ship.new(capacity:   22, mass:   28).range_with(milit_2)).to eq 28.57 }
    it('mass   55, class 1') { expect(Ship.new(capacity:   40, mass:   55).range_with(class_1)).to eq  3.63 }
    it('mass   55, class 2') { expect(Ship.new(capacity:   40, mass:   55).range_with(class_2)).to eq 14.54 }
    it('mass   55, class 3') { expect(Ship.new(capacity:   40, mass:   55).range_with(milit_3)).to eq 32.72 }
    it('mass   55, class 4') { expect(Ship.new(capacity:   40, mass:   55).range_with(class_4)).to eq  0.00 }
    it('mass   65, class 1') { expect(Ship.new(capacity:   50, mass:   65).range_with(class_1)).to eq  3.07 }
    it('mass   65, class 2') { expect(Ship.new(capacity:   50, mass:   65).range_with(class_2)).to eq 12.30 }
    it('mass   65, class 3') { expect(Ship.new(capacity:   50, mass:   65).range_with(class_3)).to eq 27.69 }
    it('mass  100, class 1') { expect(Ship.new(capacity:   80, mass:  100).range_with(class_1)).to eq  0.00 }
    it('mass  100, class 2') { expect(Ship.new(capacity:   80, mass:  100).range_with(class_2)).to eq  8.00 }
    it('mass  100, class 3') { expect(Ship.new(capacity:   80, mass:  100).range_with(class_3)).to eq 18.00 }
    it('mass  100, class 4') { expect(Ship.new(capacity:   80, mass:  100).range_with(class_4)).to eq  0.00 }
    it('mass  120, class 1') { expect(Ship.new(capacity:   90, mass:  120).range_with(class_1)).to eq  0.00 }
    it('mass  120, class 2') { expect(Ship.new(capacity:   90, mass:  120).range_with(class_2)).to eq  6.66 }
    it('mass  120, class 3') { expect(Ship.new(capacity:   90, mass:  120).range_with(class_3)).to eq 15.00 }
    it('mass  120, class 4') { expect(Ship.new(capacity:   90, mass:  120).range_with(class_4)).to eq 26.66 }
    it('mass  120, class 5') { expect(Ship.new(capacity:   90, mass:  120).range_with(class_5)).to eq  0.00 }
    it('mass  150, class 1') { expect(Ship.new(capacity:  120, mass:  150).range_with(class_1)).to eq  0.00 }
    it('mass  150, class 2') { expect(Ship.new(capacity:  120, mass:  150).range_with(class_2)).to eq  5.33 }
    it('mass  150, class 3') { expect(Ship.new(capacity:  120, mass:  150).range_with(class_3)).to eq 12.00 }
    it('mass  150, class 4') { expect(Ship.new(capacity:  120, mass:  150).range_with(class_4)).to eq 21.33 }
    it('mass  150, class 5') { expect(Ship.new(capacity:  120, mass:  150).range_with(class_5)).to eq  0.00 }
    it('mass  200, class 1') { expect(Ship.new(capacity:  160, mass:  200).range_with(class_1)).to eq  0.00 }
    it('mass  200, class 2') { expect(Ship.new(capacity:  160, mass:  200).range_with(class_2)).to eq  4.00 }
    it('mass  200, class 3') { expect(Ship.new(capacity:  160, mass:  200).range_with(class_3)).to eq  9.00 }
    it('mass  200, class 4') { expect(Ship.new(capacity:  160, mass:  200).range_with(class_4)).to eq 16.00 }
    it('mass  200, class 5') { expect(Ship.new(capacity:  160, mass:  200).range_with(class_5)).to eq 25.00 }
    it('mass  200, class 6') { expect(Ship.new(capacity:  160, mass:  200).range_with(class_6)).to eq  0.00 }
    it('mass  300, class 2') { expect(Ship.new(capacity:  235, mass:  300).range_with(class_2)).to eq  0.00 }
    it('mass  300, class 3') { expect(Ship.new(capacity:  235, mass:  300).range_with(class_3)).to eq  6.00 }
    it('mass  300, class 4') { expect(Ship.new(capacity:  235, mass:  300).range_with(class_4)).to eq 10.66 }
    it('mass  300, class 5') { expect(Ship.new(capacity:  235, mass:  300).range_with(class_5)).to eq 16.66 }
    it('mass  300, class 6') { expect(Ship.new(capacity:  235, mass:  300).range_with(class_6)).to eq  0.00 }
    it('mass 1775, class 5') { expect(Ship.new(capacity: 2000, mass: 1775).range_with(class_5)).to eq  0.00 }
    it('mass 1775, class 6') { expect(Ship.new(capacity: 2000, mass: 1775).range_with(class_6)).to eq  4.05 }
    it('mass 1775, class 7') { expect(Ship.new(capacity: 2000, mass: 1775).range_with(class_7)).to eq  5.52 }
    it('mass 1775, class 8') { expect(Ship.new(capacity: 2000, mass: 1775).range_with(class_8)).to eq  9.12 }
  end
end
