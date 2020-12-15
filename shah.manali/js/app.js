



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
         case 'user-edit-page': UserEditPage(); break;
         case 'user-upload-page': UserUploadPage(); break;


         case 'plant-profile-page': PlantProfilePage(); break;
         case 'plant-edit-page': PlantEditPage(); break;

         case 'location-profile-page': LocationProfilePage(); break;
         case 'location-edit-page': LocationEditPage(); break;
         case 'location-add-page': LocationAddPage(); break;
      }
   })




   /* FORM SUBMISSIONS */

   // event delegation
   .on("submit","#signin-form",function(e){
      e.preventDefault();
      checkSigninForm();
   })

   .on("submit","#signup-form",function(e){
      e.preventDefault();
      checkSignupForm();
   })

   .on("submit","#list-search-form",function(e){
      e.preventDefault();
      checkSearchForm();
   })


  /* FORM SUBMIT BY BUTTON */
  
   .on("click",".js-plant-add",function(e){
      checkPlantAddForm();
   })

   .on("click",".js-plant-edit",function(e){
      checkPlantEditForm();
   })

   .on("click",".js-user-edit",function(e){
      checkUserEditForm();
   })

   .on("click",".js-location-add",function(e){
      checkLocationAddForm();
   })

   .on("click",".js-location-edit",function(e){
      checkLocationEditForm();
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

   .on("click",".js-location-jump",function(e){
      sessionStorage.locationId = $(this).data("id");
      $.mobile.navigate("#location-profile-page");
   })

   // .on("click",".js-plant-delete",function(e){
   //    checkPlantDelete($(this).data("id"));
   // })

   .on("click",".js-user-upload",function(e){
      checkUserUpload();
   })
   
   .on("change",".image-uploader input",function(e){
      checkUpload(this.files[0])
      .then(d=>{
         console.log(d)
         makeUploaderImage(this,d.result,'uploads/')
      })
   })

  

   .on("click",".js-plant-delete",function(e){
      query({type:'delete_plant',params:[sessionStorage.plantId]})
      $.mobile.navigate("#list-page");
   })


   .on("click",".js-location-delete",function(e){
      checkLocationDelete($(this).data("id"));
   })







   .on("click",".filter",function(e){
      checkListFilter($(this).data());
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


