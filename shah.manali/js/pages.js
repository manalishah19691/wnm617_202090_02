

const RecentPage = async() => {

   let d = await query({
      type:'recent_locations',
      params:[sessionStorage.userId]
   });

   console.log(d)

   let valid_animals = d.result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[])


   let map_el = await makeMap("#recent-page .map");

   //console.log(map_el.data('map'))

   makeMarkers(map_el,valid_animals);

}


//async and await
const ListPage = async() => {
   let d = await query({type:'plants_by_user_id',params:[sessionStorage.userId]});


   console.log(d)
   console.log(makePlantList(d.result))

   $("#list-page .plantlist").html(makePlantList(d.result));
}

const UserProfilePage = async() => {
   let d = await query({type:'user_by_id',params:[sessionStorage.userId]});

   console.log(d)

   $("#user-profile-page .profile").html(makeUserProfile(d.result));
}



const plantProfilePage = async() => {
   query({
      type:'plant_by_id',
      params:[sessionStorage.plantId]
   }).then(d=>{
      console.log(d)

      $("#plant-profile-page .profile")
         .html(makeplantProfile(d.result));
   });

   query({
      type:'locations_by_plant_id',
      params:[sessionStorage.plantId]
   }).then(d=>{
      makeMap("#plant-profile-page .map").then(map_el=>{
         makeMarkers(map_el,d.result);
      })
   })
   
}



