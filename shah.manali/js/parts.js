
const drawPlantList = (a,empty_phrase='Hey Dummy, add an plant.') => {
   $("#list-page .plantlist")
      .html(a.length?makePlantList(a):empty_phrase);
}



//o current object, i current index, a current array//

const makePlantList = templater(o=>`
<div class="plantlist-item js-plant-jump" data-id="${o.id}">
   <div class="plantlist-image">
      <img src="${o.img}" alt="">
   </div>
   <div class="plantlist-description">
      <div class="plantlist-name">${o.name}</div>
      <div class="plantlist-type"><strong>type</strong> ${o.type}</div>
      <div class="plantlist-color"><strong>color</strong> <span class="color-dot" style="background-color:${o.color}"></span></div>
   </div>
</div>
`);

const makeUserProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt class="user-profile-image">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-email"><strong>Email</strong>: ${o.email}</div>
</div>
`)



const makePlantProfile = templater(o=>`
<div class="profile-image">
   <img src="${o.img}" alt="">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-type"><strong>Type</strong>: ${o.type}</div>
   <div class="profile-color"><strong>Color</strong>: ${o.color}</div>
</div>
`);




const makePlantPopup = o=>`
<div class="display-flex">
<div>
   <img src="${o.img}" alt="" style="width:100px;height:100px">
</div>
<div>
   <div class="profile-name">${o.name}</div>
   <div><strong>Type</strong>: ${o.type}</div>
   <div><strong>Color</strong>: ${o.color}</div>
</div>
</div>
<div>
<a href="#" class="form-button js-plant-jump" data-id="${o.plant_id}">Visit</a> 
</div>
`;



const FormControl = ({namespace,name,displayname,type,placeholder,value}) => {
   return `<div class="form-control">
      <label for="${namespace}-${name}" class="form-label">${displayname}</label>
      <input id="${namespace}-${name}" type="${type}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
   </div>`;
}


const makePlantEditForm = o => `
${FormControl({
   namespace:"Plant-edit",
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Type Plant Name",
   value:o.name
})}
${FormControl({
   namespace:"Plant-edit",
   name:"type",
   displayname:"Type",
   type:"text",
   placeholder:"Choose Plant Type",
   value:o.type
})}
${FormControl({
   namespace:"Plant-edit",
   name:"color",
   displayname:"color",
   type:"text",
   placeholder:"Type Plant Color",
   value:o.color
})}
<div class="form-control">
   <label for="plant-edit-description" class="form-label">Description</label>
   <textarea id="plant-edit-description" class="form-input" data-role="none" placeholder="Type Plant Description">${o.description}</textarea>
</div>
`;



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
   name:"name",
   displayname:"Full Name",
   type:"text",
   placeholder:"Type Your Full Name",
   value:o.name
})}
${FormControl({
   namespace:"user-edit",
   name:"email",
   displayname:"Email",
   type:"text",
   placeholder:"Type Your Email",
   value:o.email
})}
`;



const filterList = (plants,type) => {
   let a = [...(new Set(plants.map(o=>o[type])))];
   return templater(o=>`<div class="filter" data-field="${type}" data-value="${o}">${o[0].toUpperCase()+o.substr(1)}</div>`)(a);
}

const makeFilterList = (plants) => {
   return `
   <div class="filter" data-field="type" data-value="all">All</div>  
   ${filterList(plants,'type')}  
   ${filterList(plants,'color')} 
   `;
}





