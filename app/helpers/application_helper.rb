module ApplicationHelper
  def randomized_background_image
    images = ["home_banner/0.jpg", 
              "home_banner/1.jpg", 
              "home_banner/2.jpg",
              "home_banner/3.jpg",
              "home_banner/4.jpg"
            ]
    images[rand(images.size)]
  end
end
