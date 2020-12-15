
const drawPlantList = (a,empty_phrase='Hey Dummy, add a plant.') => {
   $("#list-page .plantlist")
      .html(a.length?makePlantList(a):empty_phrase);
}



//o current object, i current index, a current array//

const makePlantList = templater(o=>`
<div class="plantlist-item js-plant-jump" data-id="${o.id}">
   <div class="plantlist-image">
      <img src="${o.img}" alt="">
   </div>
   <div class="plantlist-info">
      <div class="flex-stretch"><div class="plantlist-name">${o.name}</div>
      <div class="plantlist-type"><img src="img/${o.type}.svg" alt=""></div></div>
       <div class="plantlist-description">${o.description}</div>
   </div>
</div>
`);



const makeUserProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt class="user-profile-image">
</div>
<div class="profile-body">
   <div class="name flex-stretch"><h1>${o.firstname} ${o.lastname}</h1></div>
   <div class="profile-email"><strong>Email</strong>: ${o.email}</div>
   <div class="user-info profile-email"><strong>Status</strong>: ${o.status}</div>
   <div class="profile-email"><strong>About</strong>: ${o.about}</div></div>
   
</div>
`)



const makePlantProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt="">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-type plantlist-type" style="padding:1em">Type:<img src="img/${o.type}.svg" alt=""></div>
   <div class="profile-category">Category: ${o.category}</div>
   <div class="profile-shape">Shape: ${o.shape}</div>
   <div class="profile-pattern">Pattern: ${o.pattern}</div>
   <div class="profile-description">Description: ${o.description}</div>

</div>
`);




const makeLocationProfile = templater(o=>`
<div class="location-image">
   <img src="${o.photo}" alt="">
</div>
   <div class="location-plant-health">Condition:<img src="img/${o.plant_health}.svg" alt=""></div>
   <div class="location-description">Description: ${o.map_description}</div>

`);


const makePlantPopup = o=>`
<div class="display-flex" "modal-body">
<div>
   <img src="${o.img}" alt="" style="width:100px;height:100px;border-radius:5px">
</div>
<div class="popup-info">
   <div class="popup-name">${o.name}</div>
   <div class="popup-type">Type:<img src="img/${o.type}.svg" alt=""></div>
   <div class="plant-health">Condition:<img src="img/${o.plant_health}.svg" alt=""></div>
   <div class="popup-description">${o.map_description}</div>
</div>
<div>
<div class="form-control">
<a href="#" class="popup-button form-button js-plant-jump" data-id="${o.plant_id}">Profile</a>
</div> 
</div>
`;






const FormControl = ({namespace,name,displayname,type,placeholder,value}) => {
   return `<div class="form-control">
      <label for="${namespace}-${name}" class="form-label">${displayname}</label>
      <input id="${namespace}-${name}" type="${type}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
   </div>`;
}



const makeUserEditForm = o => `
<form id="user-edit-form" data-ajax="false" style="padding:1em">
${FormControl({
   namespace:"user-edit",
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"Type Your Username",
   value:o.username
})}
${FormControl({
   namespace:"user-edit",
   name:"firstname",
   displayname:"First Name",
   type:"text",
   placeholder:"Type Your First Name",
   value:o.firstname
})}
${FormControl({
   namespace:"user-edit",
   name:"lastname",
   displayname:"Last Name",
   type:"text",
   placeholder:"Type Your Last Name",
   value:o.lastname
})}
${FormControl({
   namespace:"user-edit",
   name:"email",
   displayname:"Email",
   type:"text",
   placeholder:"Type Your Email",
   value:o.email
})}
${FormControl({
   namespace:"user-edit",
   name:"status",
   displayname:"Status",
   type:"text",
   placeholder:"Type Your Status",
   value:o.status
})}
<div class="form-control">
   <label for="user-edit-about" class="form-label">About</label>
   <textarea id="user-edit-about" class="form-input" data-role="none" placeholder="Tell us about yourself">${o.about}</textarea>
</div>
<a href="#user-profile-page" class="form-button js-user-edit">Save</a>
</div>
`;


const makePlantEditForm = o => `
<div>
   <input type="hidden" id="plant-edit-image" value="${o.img}">
   <label class="image-uploader thumbnail picked" style="background-image:url('${o.img}')">
      <input type="file" data-role="none" id="plant-edit-upload">
   </label>
</div>
${FormControl({
   namespace:"plant-edit",
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Type Plant Name",
   value:o.name
})}
${FormControl({
   namespace:"plant-edit",
   name:"type",
   displayname:"Type",
   type:"text",
   placeholder:"Choose Plant Type",
   value:o.type
})}
${FormControl({
   namespace:"plant-edit",
   name:"category",
   displayname:"Category",
   type:"text",
   placeholder:"Type plant category",
   value:o.category
})}
${FormControl({
   namespace:"plant-edit",
   name:"shape",
   displayname:"Shape",
   type:"text",
   placeholder:"Type plant shape",
   value:o.shape
})}
${FormControl({
   namespace:"plant-edit",
   name:"pattern",
   displayname:"Pattern",
   type:"text",
   placeholder:"Type pattern of plant",
   value:o.pattern
})}
<div class="form-control">
   <label for="plant-edit-description" class="form-label">Description</label>
   <textarea id="plant-edit-description" class="form-input" data-role="none" placeholder="Type plant description">${o.description}</textarea>
<div class="form-control">
 <a href="#plant-profile-page" class="form-button js-plant-edit">Save</a>
</div>
`;



const makeLocationEditForm = o => `
<form id="location-edit-form" data-ajax="false" style="padding:1em">
${FormControl({
   namespace:"location-edit",
   name:"plant_health",
   displayname:"Condition",
   type:"text",
   placeholder:"Type plant condition",
   value:o.plant_health
})}
${FormControl({
   namespace:"location-edit",
   name:"date_create",
   displayname:"Date",
   type:"text",
   placeholder:"yyyy/mm/dd",
   value:o.date_create
})}
<div class="form-control">
   <label for="location-edit-map_description" class="form-label">Description</label>
   <textarea id="location-edit-map_description" class="form-input" data-role="none" placeholder="About Location">${o.map_description}</textarea>
   </div>
   <div class="form-control">
 <a href="#plant-profile-page" class="form-button js-location-edit">Save</a>
</div>
`;







const toUppercase = (o) => {
   return o==''?'':o[0].toUpperCase()+o.substr(1);
}



const filterList = (plants,type) => {
   let a = [...(new Set(plants.map(o=>o[type])))];
   return templater(o=>`<div class="filter" data-field="${type}" data-value="${o}">${toUppercase(o)}</div>`)(a);
}

const makeFilterList = (plants) => {
   return `
   <div class="filter" data-field="type" data-value="all">All</div>  
   ${filterList(plants,'type')}  
   

   `;
}



const makeUploaderImage = (el,name,folder='') => {
   $(el).parent().css({'background-image':`url('${folder+name}')`}).addClass("picked")
      .prev().val(folder+name)
}


