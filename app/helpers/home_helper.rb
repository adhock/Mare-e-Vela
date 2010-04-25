module HomeHelper
  # Affiche le nom du mois
  def month_name(month)
    months = { 
      1 => 'Janvier', 
      2 => 'Fevrier', 
      3 => 'Mars', 
      4 => 'Avril', 
      5 => 'Mai', 
      6 => 'Juin', 
      7 => 'Juillet', 
      8 => 'Aout', 
      9 => 'Septembre', 
      10 => 'Octobre', 
      11 => 'Novembre', 
      12 => 'Decembre'}
      months[month]
  end
end
