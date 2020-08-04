require 'pry'
def nyc_pigeon_organizer(data)
  results = data.each_with_object({}) do |(keys, values), final_array|
      values.each do |inner_key, inner_value|
        inner_value.each do |name|
          if !final_array[name]
            final_array[name] = {}
          end
          if !final_array[name][keys]
            final_array[name][keys]=[]
          end
          final_array[name][keys].push(inner_key)
        end
      end
  end
  binding.pry
end
