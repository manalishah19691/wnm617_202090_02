



const checkSignupForm = () => {
   let username = $("#signup-username").val();
   let email = $("#signup-email").val();
   let password = $("#signup-password").val();
   let passwordconfirm = $("#signup-password-confirm").val();


   let found_signup_user = await query({
      type:'check_signin',
      params:[username,email]
   });
   
   if(found_signup_user.result.length) {
   makeWarning("#warning-modal","Username or Email already exists!");

   if(user=="" || email=="" || pass=="" || conf_pass=="") {
      makeWarning("#warning-modal","You missed something!");


   else if(password!=passwordconfirm) {
      throw "Passwords don't match";
   } else {
      query({type:'insert_user',params:[username,email,password]})
      then(d=>{
         if(d.error) {
            throw d.error;
         }
         console.log(d.id)
         sessionStorage.userId = d.id;
         $("#signup-form")[0].reset();
         $.mobile.navigate("#recent-page");
      })
   }
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












