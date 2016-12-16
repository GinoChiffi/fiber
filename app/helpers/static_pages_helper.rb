module StaticPagesHelper
  def gender_icon(gender)
    if gender == 'Male'
      "male"
    else
      "female"
    end
  end
end
