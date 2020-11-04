

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
   <img src="${o.img}" alt="">
</div>
<div class="profile-body">
   <div class="profile-name">${o.name}</div>
   <div class="profile-email"><strong>Email</strong>: ${o.email}</div>
</div>
<p><a href="#settings-page">Settings</a></p>
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



