$( document ).ready(function() {
$( "#q_subcategories_category_id_eq" ).change(function() {
  // Get category id
  category = $( "#q_subcategories_category_id_eq" ).val();


  $("#q_subcategories_id_eq > option").show();

  // Hide all other values in subcategory
  $("#q_subcategories_id_eq > option[data-category!=" + category + "]").hide();


  })
});


