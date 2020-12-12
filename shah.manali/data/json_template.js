
// https://json-generator.com
// https://konbert.com/convert






//Plant template//
[
  '{{repeat(50)}}',
  {
    id: '{{index(1)}}',
    user_id:'{{integer(1,10)}}',
    
    name: '{{company()}}',
    
    
    type: '{{random("leaf","flower")}}',
    color: function(tags) {
      var colors = {
        "leaf":["lime","white","green"],
        "flower":["purple","yellow","orange"]
      };
      var chosen_type = colors[this.type];
      var chosen_index = tags.integer(0,chosen_type.length-1);
      return chosen_type[chosen_index];
    },
    
    description: '{{lorem(3, "sentences")}}',
    
    img: function(tags) {
      return 'https://via.placeholder.com/400/' +
        tags.integer(700,999) +
        '/fff/?text=' +
        this.name;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]



//Updated Plant template//

[
  '{{repeat(50)}}',
  {
    id: '{{index(1)}}',
    user_id:'{{integer(1,10)}}',
    
    name: '{{company()}}',
    
    
    type: '{{random("Leaf","Flower","Cactus")}}',
    
    category: '{{random("Hens & Chicks","Jade","Zebra","Sunburst")}}',
    
    shape: '{{random("Rose","Ball","Tongue", "Ear" )}}',
    
    pattern: '{{random("Pointy-tips","Fine-haired","Striped","Thorns")}}',
    
    description: '{{random("The leaves of this plant start off as a light green shade that turns darker in the sun.","This succulent prefers full sun, which is why it grows best in outdoor gardens.","They are most commonly placed in flower beds or borders and like to grow together in clusters.","Most leaves have rounded edges that with good care can live up to 100 years!","They are known for sprouting colorful flower clusters that look great in a summer garden.")}}',
    
    img: function(tags) {
      return 'https://via.placeholder.com/400/' +
        tags.integer(700,999) +
        '/fff/?text=' +
        this.name;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]


















//User template//

    [
  '{{repeat(10)}}',
  {
    id: '{{index(1)}}',
    name: '{{firstName()}} {{surname()}}',
    username: function(){
      return 'user' + this.id;
    },
    email: function(){
      return this.username + '@gmail.com';
    },
    password: 'md5(pass)',
    
    
    
    img: function(tags) {
      return 'https://via.placeholder.com/400/' +
        tags.integer(700,999) +
        '/fff/?text=' +
        this.username;
    },
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]


















//Location template//

[
  '{{repeat(250)}}',
  {
    id: '{{index(1)}}',
    plant_id:'{{integer(1,50)}}',
    
    lat: '{{floating(37.807977,37.705497)}}',
    lng: '{{floating(-122.524981,-122.358388)}}',
    
    
    description: '{{lorem(3, "sentences")}}',
    
    photo: 'https://via.placeholder.com/400/',
    icon: 'https://via.placeholder.com/100/?text=ICON',
    
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]


//Updated Location template//


[
  '{{repeat(250)}}',
  {
    id: '{{index(1)}}',
    plant_id:'{{integer(1,50)}}',
    
    lat: '{{floating(37.807977,37.705497)}}',
    lng: '{{floating(-122.524981,-122.358388)}}',
    
    plant_health: '{{random("Poor","Good","Excellent")}}',
    
    description: '{{lorem(1, "sentences")}}',
    
    photo: 'https://via.placeholder.com/400/',
    icon: 'https://via.placeholder.com/100/?text=ICON',
    
    date_create: '{{date(new Date(2020, 0, 1), new Date(), "YYYY-MM-dd hh:mm:ss")}}'
  }
]




























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
  ]




 