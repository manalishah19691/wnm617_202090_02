



// Document Ready
$(()=>{

   checkUserId();

   $(document)


   // ROUTES
   .on("pagecontainerbeforeshow",function(e,ui){
      console.log(ui.toPage[0].id)

      // Routing
      switch(ui.toPage[0].id) {
         case 'recent-page': RecentPage(); break;
         case 'list-page': ListPage(); break;
         case 'user-profile-page': UserProfilePage(); break;
         case 'user-profile-edit-page': UserProfileEditPage(); break;
         case 'plant-profile-page': PlantProfilePage(); break;
         case 'plant-profile-edit-page': AnimalProfileEditPage(); break;
      }
   })




   /* FORM SUBMISSIONS */

   // event delegation
   .on("submit","#signin-form",function(e){
      e.preventDefault();
      checkSigninForm();
   })

   .on("submit","#list-search-form",function(e){
      e.preventDefault();
      checkSearchForm();
   })


  /* FORM SUBMIT BY BUTTON */
  
   .on("click",".js-location-add",function(e){
      checkLocationAddForm();
   })
   



   /* ANCHOR CLICKS */

   .on("click",".js-logout",function(e){
      sessionStorage.removeItem('userId');
      checkUserId();
   })

   .on("click",".js-plant-jump",function(e){
      sessionStorage.plantId = $(this).data("id");
      $.mobile.navigate("#plant-profile-page");
   })




   .on("click",".filter",function(e){
      checkListFilter($(this).data());
   })
   .on("change",".image-uploader input",function(e){
      checkUpload(this.files[0])
      .then(d=>{
         console.log(d)
         makeUploaderImage({
            namespace:'user-upload',
            folder:'uploads/',
            name:d.result
         })
      })
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
   ;






   $("[data-template]").each(function(){
      let target = $(this).data("template");
      let template = $(target).html();
      $(this).html(template);
   })

})


