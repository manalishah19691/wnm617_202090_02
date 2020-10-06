
// Document Ready
$(()=>{

   checkUserId();

   $(document)

   // event delegation
   .on("submit","#signin-form",function(e){
      e.preventDefault();
      checkSigninForm();
   })




   /* anchor clicks */
   .on("click",".js-logout",function(e){
      sessionStorage.removeItem('userId');
      checkUserId();
   })






   .on("click","[data-activate]",function(){
      let target = $(this).data('activate');
      $(target).addClass("active");
   })
   .on("click","[data-deactivate]",function(){
      let target = $(this).data('deactivate');
      $(target).removeClass("active");
   })
   .on("click","[data-toggle]",function(){
      let target = $(this).data('toggle');
      $(target).toggleClass("active");
   })


})