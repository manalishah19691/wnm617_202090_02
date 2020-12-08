

const RecentPage = async() => {

   let d = await query({
      type:'recent_locations',
      params:[sessionStorage.userId]
   });

   console.log(d)

   let valid_plants = d.result.reduce((r,o)=>{
      o.icon = o.img;
      if(o.lat && o.lng) r.push(o);
      return r;
   },[])


   let map_el = await makeMap("#recent-page .map");

   //console.log(map_el.data('map'))

   makeMarkers(map_el,valid_plants);
    // makeMarkers(map_el,[]);

   map_el.data("markers").forEach((o,i)=>{
      o.addListener("click",function(){
         // console.log("honk")
         
/*
         // SIMPLE EXAMPLE
         sessionStorage.plantId = valid_plants[i].plant_id;
         $.mobile.navigate("#plant-profile-page");
         */

   // INFOWINDOW EXAMPLE
         // map_el.data("infoWindow")
         //    .open(map_el.data("map"),o);
         // map_el.data("infoWindow")
         //    .setContent(makeplantPopup(valid_plants[i]));

         // ACTIVATE EXAMPLE
         $("#recent-plant-modal").addClass("active");
         $("#recent-plant-modal .modal-body")
            .html(makeplantPopup(valid_plants[i]))
      })
   })
}



//async and await
const ListPage = async() => {
   let d = await query({
      type:'plants_by_user_id',
      params:[sessionStorage.userId]
   });

   $("#list-page .filter-list").html(makeFilterList(d.result))

   console.log(d)

   drawPlantList(d.result);
}









const PlantProfilePage = async() => {
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

const PlantProfileEditPage = async() => {
   query({
      type:'plant_by_id',
      params:[sessionStorage.plantId]
   }).then(d=>{
      console.log(d)

      $("#plant-edit-form")
         .html(makePlantProfileUpdateForm(d.result[0]));
   });
}




const LocationAddPage = async() => {
   let map_el = await makeMap("#location-add-page .map");
   makeMarkers(map_el,[]);

   let map = map_el.data("map");

   map.addListener("click",function(e){
      console.log(e, map.getCenter())

      let posFromClick = {
         lat:e.latLng.lat(),
         lng:e.latLng.lng()
      };
      let posFromCenter = {
         lat:map.getCenter().lat(),
         lng:map.getCenter().lng()
      };

      $("#location-add-lat").val(posFromClick.lat)
      $("#location-add-lng").val(posFromClick.lng)

      makeMarkers(map_el,[posFromClick])
   })
}



