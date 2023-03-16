reload!

params = {
          "gender"=>"women",
          "weight"=>"90",
          "size"=>"175",
          "level"=>"Débutant",
          "temperature"=>"cold",
          "commit"=>"voir les résultats",
          "controller"=>"pages",
          "action"=>"results"}.with_indifferent_access

res = GetWetsuitsFromCriteria.new(params).call


ap res
