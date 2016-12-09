// $( document ).ready(function() {
//   $('.btn-submit-like').click(function(){
//       console.log('looool')
//       var likeId = $(this).attr('id')
//       console.log(likeId)
//       var idRegex = /\d+/g;
//       var itemId = likeId.match(idRegex)[0];

//       ajaxCallLike(itemId)
//   });


//   function ajaxCallLike(itemId) {
//     $.ajax({
//       type: "POST",
//       url: "/items/" + itemId + "/item_likes",
//       beforeSend: function(){
//         console.log('succes pik')
//       },
//       success: function(data) {
//         var itemLike = $("#btn-like-" + itemId)
//         console.log(itemLike);
//         itemLike.replaceWith("<p>Unlike this </p>");
//       },
//       error: function(jqXHR) {
//         console.error(jqXHR.responseText);
//       }
//     });
//   }
// });
