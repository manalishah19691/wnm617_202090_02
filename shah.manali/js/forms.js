



const checkSignupForm = async () => {
   let username = $("#signup-username").val();
   let email = $("#signup-email").val();
   let password = $("#signup-password").val();
   let passwordconfirm = $("#signup-password-confirm").val();


   //let found_signup_user = await query({
   //   type:'check_signin',
   //   params:[username,email]
   //});
   

   if(username=="" || email=="" || password=="" || passwordconfirm=="") 
      makeWarning("#warning-modal","You missed something!");
   

   if(password!=passwordconfirm) {
      throw "Passwords don't match";
   } else {
      query({type:'insert_user',params:[username,email,password]})
      .then(d=>{
         if(d.error) {

               makeWarning("#warning-modal","Username or Email already exists!");
            throw d.error;

         }
         console.log(d.id)
         sessionStorage.userId = d.id;
         $("#signup-form")[0].reset();
         $.mobile.navigate("#recent-page");
      })
   }
}







const checkUserEditForm = () => {
   let username = $("#user-edit-username").val();
   let firstname = $("#user-edit-firstname").val();
   let lastname = $("#user-edit-lastname").val();
   let email = $("#user-edit-email").val();
   let status = $("#user-edit-status").val();
   let about = $("#user-edit-about").val();

   query({
      type:'update_user',
      params:[username,firstname,lastname,email,status,about,sessionStorage.userId]})
   .then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-1);
   })
}








const checkPlantAddForm = () => {
   let name = $("#plant-add-name").val();
   let type = $("#plant-add-type").val();
   let category = $("#plant-add-category").val();
   let shape = $("#plant-add-shape").val();
   let pattern = $("#plant-add-pattern").val();
   let description = $("#plant-add-description").val(); 

   query({
      type:'insert_plant',
      params:[name,type,category,shape,pattern,description,sessionStorage.userId]})
   .then(d=>{
      if(d.error) {
         throw d.error;
      }
      console.log(d.id)

      $("#plant-add-form")[0].reset();

      sessionStorage.plantId = d.id;
      $.mobile.navigate($("#plant-add-destination").val());
   })
}




// const checkAnimalEditForm = () => {
//    let name = $("#animal-edit-name").val();
//    let type = $("#animal-edit-type").val();
//    let breed = $("#animal-edit-breed").val();
//    let description = $("#animal-edit-description").val();
//    let image = $("#animal-edit-image").val();

//    query({
//       type:'update_animal',
//       params:[name,type,breed,description,image,sessionStorage.animalId]})
//    .then(d=>{
//       if(d.error) {
//          throw d.error;
//       }
//       window.history.back();
//    })
// }





const checkPlantEditForm = () => {
   let name = $("#plant-edit-name").val();
   let type = $("#plant-edit-type").val();
   let category = $("#plant-edit-category").val();
   let shape = $("#plant-edit-shape").val();
   let pattern = $("#plant-edit-pattern").val();
   let description = $("#plant-edit-description").val();

   query({
      type:'update_plant',
      params:[name,type,category,shape,pattern,description,sessionStorage.plantId]})
   .then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}



const checkPlantDelete = id => {
   query({
      type:'delete_plant',
      params:[id]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   });
}







const checkLocationAddForm = () => {
   let lat = $("#location-add-lat").val();
   let lng = $("#location-add-lng").val();
   let description = $("#location-add-description").val();

   query({
      type:'insert_location',
      params:[sessionStorage.plantId,lat,lng,description]})
   .then(d=>{
      if(d.error) {
         throw d.error;
      }
      $("#location-add-form")[0].reset();
      window.history.go(-2);
   })
}



const checkLocationEditForm = () => {
   let plant_health = $("#location-edit-condition").val();
   let map_description = $("location-edit-map_description").val();
   let date_create = $("location-edit-date_create").val();
   query({
      type:'update_location',
      params:[plant_health,map_description,date_create,sessionStorage.userId]})
   .then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.go(-2);
   })
}



const checkSearchForm = async () => {
   let s = $("#list-search-input").val();
   console.log(s)

   let r = await query({type:"search_plants",params:[s,sessionStorage.userId]});

   drawPlantList(r.result,'No results found');

   console.log(r)
}







const checkListFilter = async (d) => {
   let r = d.value=='all' ?
      await query({
         type:'plants_by_user_id',
         params:[sessionStorage.userId]
      }) :
      await query({
         type:'plant_filter',
         params:[d.field,d.value,sessionStorage.userId]
      });

   console.log(r)
   drawPlantList(r.result,'No results found');
}








const checkUpload = file => {
   let fd = new FormData();
   fd.append("image",file);

   return fetch('data/api.php',{
      method:'POST',
      body:fd
   }).then(d=>d.json())
}

const checkUserUpload = () => {
   let upload = $("#user-upload-image").val()
   if(upload=="") return;

   query({
      type:'update_user_image',
      params:[upload,sessionStorage.userId]
   }).then(d=>{
      if(d.error) {
         throw d.error;
      }
      window.history.back();
   })
}




