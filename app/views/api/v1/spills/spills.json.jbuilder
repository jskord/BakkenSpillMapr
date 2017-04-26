json.array! @families.each do |spill|
  json.partial! 'spill.json.jbuilder', spill: spill
end