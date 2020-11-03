







[
  '{{repeat(250)}}',
  {
	id: '{{objectId()}}',
    index: '{{index()}}',
    guid: '{{guid()}}',
    isActive: '{{bool()}}',
    balance: '{{floating(1000, 4000, 2, "$0,0.00")}}',
    picture: 'http://placehold.it/32x32',
    age: '{{integer(20, 40)}}',
    eyeColor: '{{random("blue", "brown", "green")}}',
    name: '{{firstName()}} {{surname()}}',
    gender: '{{gender()}}',
    company: '{{company().toUpperCase()}}',
    email: '{{email()}}',
    phone: '+1 {{phone()}}',
    address: '{{integer(100, 999)}} {{street()}}, {{city()}}, {{state()}}, {{integer(100, 10000)}}',
    about: '{{lorem(1, "paragraphs")}}',
    registered: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ss Z")}}',
    latitude: '{{floating(-90.000001, 90)}}',
    longitude: '{{floating(-180.000001, 180)}}',
    tags: [
      '{{repeat(7)}}',
      '{{lorem(1, "words")}}'
    ],
    friends: [
      '{{repeat(3)}}',
      {
        id: '{{index()}}',
        name: '{{firstName()}} {{surname()}}'
      }
    ],
    greeting: function (tags) {
      return 'Hello, ' + this.name + '! You have ' + tags.integer(1, 10) + ' unread messages.';
    },
    favoriteFruit: function (tags) {
      var fruits = ['apple', 'banana', 'strawberry'];
      return fruits[tags.integer(0, fruits.length - 1)];
    }







    [
  {
    "id": 1,
    "name": "Avery Nicholson",
    "username": "user1",
    "email": "user1@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/762/fff/?text=user1",
    "date_create": "2020-10-12 12:31:33"
  },
  {
    "id": 2,
    "name": "Wall Welch",
    "username": "user2",
    "email": "user2@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/771/fff/?text=user2",
    "date_create": "2020-08-16 05:44:32"
  },
  {
    "id": 3,
    "name": "Marilyn Delaney",
    "username": "user3",
    "email": "user3@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/738/fff/?text=user3",
    "date_create": "2020-09-25 09:54:32"
  },
  {
    "id": 4,
    "name": "Pruitt Zimmerman",
    "username": "user4",
    "email": "user4@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/933/fff/?text=user4",
    "date_create": "2020-02-13 03:45:44"
  },
  {
    "id": 5,
    "name": "Mccall Payne",
    "username": "user5",
    "email": "user5@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/962/fff/?text=user5",
    "date_create": "2020-05-14 09:37:57"
  },
  {
    "id": 6,
    "name": "Melton Decker",
    "username": "user6",
    "email": "user6@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/775/fff/?text=user6",
    "date_create": "2020-06-20 09:17:22"
  },
  {
    "id": 7,
    "name": "Donna Ortiz",
    "username": "user7",
    "email": "user7@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/791/fff/?text=user7",
    "date_create": "2020-02-13 04:56:51"
  },
  {
    "id": 8,
    "name": "York Richardson",
    "username": "user8",
    "email": "user8@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/704/fff/?text=user8",
    "date_create": "2020-02-27 11:39:25"
  },
  {
    "id": 9,
    "name": "Navarro Francis",
    "username": "user9",
    "email": "user9@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/911/fff/?text=user9",
    "date_create": "2020-01-10 11:45:27"
  },
  {
    "id": 10,
    "name": "Mccormick Sharp",
    "username": "user10",
    "email": "user10@gmail.com",
    "password": "md5(pass)",
    "img": "https:via.placeholder.com/400/982/fff/?text=user10",
    "date_create": "2020-05-12 01:07:57"
  }
]







 {
    id: '{{index(1)}}',
    user_id:'{{integer(1,10}}',
  
    name: '{{company()}}',
    
  
    type: '{{random("leaf","flower")}}',
    color: function(tags) {
      var color = {
        "leaf": ["white", "green", "lime" ],
        "flower": ["purple", "rainbow" ]
  };
     var chosen_type = colors[this.type];
     var chosen_index =
        tags.integer(0,chosen_type.length-1);
        return chosen_type[chosen_index];
      },
    description: '{{lorem(3, "sentences")}},
    
    img: function(tags) {
    return 'https:via.placeholder.com/400/' +
    tags.integer(700,999) +
    '/fff/?text=' +
    this.name;
  },
  date_create: '{{date(new Date(2014, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
      }






























