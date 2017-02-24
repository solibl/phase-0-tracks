Classroom = {

  Desk1: {

    Supplies: [
      "pencils",
      "paper", 
      "book", 
      "binder"
      ],
    Toys: [
      "Action Figure",
      "Marbles"
    ]
 
  },    

  Desk2: {

    Supplies: [
      "pens",
      "paper", 
      "binder"
      ],
    Toys: [
      "Pogs"
    ]

  },    

  Desk3: {

    Supplies: [
      "pencils",
      "book", 
      ],
    Toys: [
      "GameBoy",
      "YoYo"
    ]
  }  
}
p Classroom

Classroom[:Desk3][:Supplies][1] = "Eraser"
p Classroom[:Desk3][:Supplies][1]
p Classroom

p Classroom[:Desk2][:Supplies][2].capitalize

p Classroom[:Desk1][:Supplies]
p Classroom[:Desk1][:Supplies].shuffle

p Classroom[:Desk3][:Supplies][1] + Classroom[:Desk3][:Toys][0]

p Classroom[:Desk2]
