require "pry"

def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(trait, variants), result|
    variants.each do |variant, birds|
      birds.each do |bird|
        pigeon_list[bird] ||= {}
        pigeon_list[bird][trait] ||= []
        pigeon_list[bird][trait] << variant.to_s
      end
    end
  end
end
