# db/seeds.rb
Service.destroy_all

services = [

  {
    title: "Night Clubs",
    description: "Experience the ultimate nightlife at our exclusive night clubs. Enjoy world-class DJs and vibrant atmospheres. Unforgettable nights await you.",
    image_url: "nightclubs.jpg"
  },
  {
    title: "Hotel Booking",
    description: "Secure the best deals with our hotel booking services. Enjoy luxurious accommodations and exceptional amenities. Make your stay unforgettable with us.",
    image_url: "hotelbooking.jpg"
  },
  {
    title: "Wedding Styling",
    description: "Transform your special day with our expert wedding styling. Enjoy personalized designs and elegant themes. Create unforgettable memories with us.",
    image_url: "weddingstyling.jpg"
  },
  {
    title: "Evening Programs",
    description: "Enhance your event with our curated evening programs. Enjoy engaging entertainment and unique experiences. Make your evenings memorable with us.",
    image_url: "eveningprograms.jpg"
  },
  {
    title: "On-Site Management",
    description: "Ensure flawless events with our on-site management. Enjoy seamless coordination and professional oversight. Let us handle the details for your peace of mind.",
    image_url: "onsitemanagement.jpg"
  },
  {
    title: "Sweets and Desserts",
    description: "Delight your guests with our exquisite sweets and desserts. Enjoy a variety of delicious treats and elegant presentations. Indulge in sweet perfection with us.",
    image_url: "sweetsdesserts.jpg"
  },
  {
    title: "Floral Arrangements",
    description: "Beautify your event with our stunning floral arrangements. Enjoy fresh, vibrant flowers and creative designs. Elevate your occasion with our floral expertise.",
    image_url: "floralarrangements.jpg"
  },
  {
    title: "Catering Services",
    description: "Savor the finest flavors with our catering services. Enjoy gourmet cuisine and exceptional service. Make your event a culinary delight with us.",
    image_url: "cateringservices.jpg"
  },
  {
    title: "Photography",
    description: "Capture every moment with our professional photography. Enjoy high-quality images and creative compositions. Preserve your memories beautifully with us.",
    image_url: "photography.jpg"
  },
  {
    title: "Invitation Design",
    description: "Set the tone with our custom invitation design. Enjoy elegant and unique invitations tailored to your event. Make a lasting impression from the start.",
    image_url: "invitationdesign.jpg"
  },
  {
    title: "Cake Design",
    description: "Indulge in our exquisite wedding cake design. Enjoy beautiful, delicious cakes crafted to perfection. Celebrate your special day with a stunning centerpiece.",
    image_url: "cakedesign.jpg"
  },
  {
    title: "Decor Rentals",
    description: "Enhance your event with our premium decor rentals. Enjoy a wide selection of stylish furnishings and accessories. Create the perfect ambiance with us.",
    image_url: "decorrentals.png"
  }
]

services.each do |service|
  Service.create(service)
end
