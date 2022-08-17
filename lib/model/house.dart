class House{
  final String name;
  final String address;
  final String imageUrl;

  House(this.name, this.address, this.imageUrl);


  static List<House> generateRecommend(){
    return [
      House("The moon House", "gokarna", "assets/images/house01.jpeg"), 
      House("The moon House", "jorpati", "assets/images/house02.jpeg"),

    ];
  }

  static List<House>generateBestOffers(){
    return[
     House("The moon House", "gokarna", "assets/images/offer01.jpeg"), 
      House("The moon House", "jorpati", "assets/images/offer02.jpeg"),
    ];
  }

}