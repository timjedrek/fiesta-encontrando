module ApplicationHelper
  def randomized_background_image
    #images = ["images/home_banner/0.jpg", 
    #          "images/home_banner/1.jpg", 
    #          "images/home_banner/2.jpg",
    #          "images/home_banner/3.jpg",
    #          "images/home_banner/4.jpg"
    #        ]
    images = ["bg-randomhead0", 
              "bg-randomhead1", 
              "bg-randomhead2",
              "bg-randomhead3",
              "bg-randomhead4"
            ]
            
    images[rand(images.size)]
  end
end
