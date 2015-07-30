class Stock < ActiveRecord::Base
  belongs_to :system

  def cost
    cost_decs / 10.0
  end

  def cost=(val)
    self.cost_decs = val.try :*, 10
  end

  NAMES = [
    WATER            = 'Water',
    LIQUID_OXYGEN    = 'Liquid oxygen',
    GRAIN            = 'Grain',
    FRUIT_AND_VEG    = 'Fruit and veg',
    ANIMAL_MEAT      = 'Animal meat',
    SYNTHETIC_MEAT   = 'Synthetic meat',
    LIQUOR           = 'Liquor',
    MEDICINES        = 'Medicines',
    FERTILIZER       = 'Fertilizer',
    ANIMAL_SKINS     = 'Animal skins',
    LUXURY_GOODS     = 'Luxury goods',
    HEAVY_PLASTICS   = 'Heavy plastics',
    METAL_ALLOYS     = 'Metal alloys',
    PRECIOUS_METALS  = 'Precious metals',
    GEM_STONES       = 'Gem stones',
    MINERALS         = 'Minerals',
    HYDROGEN_FUEL    = 'Hydrogen fuel',
    MILITARY_FUEL    = 'Military fuel',
    INDUSTRIAL_PARTS = 'Industrial parts',
    COMPUTERS        = 'Computers',
    AIR_PROCESSORS   = 'Air processors',
    FARM_MACHINERY   = 'Farm Machinery',
    ROBOTS           = 'Robots',
    RADIOACTIVES     = 'Radioactives',
    RUBBISH          = 'Rubbish',
    NARCOTICS        = 'Narcotics',
    LIVE_ANIMALS     = 'Live animals',
    SLAVES           = 'Slaves',
    HAND_WEAPONS     = 'Hand weapons',
    BATTLE_WEAPONS   = 'Battle weapons',
    NERVE_GAS        = 'Nerve gas',
  ]

  IMPORT_EXPORTS = [
    MAJOR_EXPORT = 'Major export',
    MINOR_EXPORT = 'Minor export',
    MAJOR_IMPORT = 'Major import',
    MINOR_IMPORT = 'Minor import',
    ILLEGAL      = 'Illegal'
  ]
end
