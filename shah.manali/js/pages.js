
const RecentPage = async() => {}


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


const PlantProfilePage = async() => {
   let d = await query({
      type:'plant_by_id',
      params:[sessionStorage.plantId]
   });

   console.log(d)

   $("#plant-profile-page .profile")
      .html(makePlantProfile(d.result));
}


