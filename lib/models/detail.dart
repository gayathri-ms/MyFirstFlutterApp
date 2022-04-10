class Details {
  final int id;
  final String name;
  final String imagepath;
  final String role;
  final String location;
  final String college;

  Details(this.id, this.name, this.imagepath, this.role, this.location,
      this.college);

  static List<Details> fetchAll() {
    return [
      Details(
          1, "Vishal Mehta", "assets/images/image1.jpg", "-", "Not Known", "-"),
      Details(2, "Ash", "assets/images/image2.jpg", "-", "Not Known", "-"),
      Details(3, "Gayathri M S", "assets/images/image3.jpg", "Tech Intern",
          "Tirupur", "IIIT BBSR"),
      Details(4, "Chandana Reddy", "assets/images/image1.jpg", "Tech Intern",
          "Rourkela", "IIIT BBSR"),
      Details(5, "Debabrata Basak", "assets/images/image2.jpg", "Tech Intern",
          "Kolkata", "Not Known"),
      Details(6, "Kushal", "assets/images/image3.jpg", "Tech Intern", "Mumbai",
          "Not Known"),
      Details(7, "Sairaj", "assets/images/image1.jpg", "Tech Intern", "Pune",
          "Not Known")
    ];
  }
}
