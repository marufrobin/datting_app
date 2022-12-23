class ModelData {
  String name;
  String age;
  String img;
  String address;
  String gender;

  ModelData(this.name, this.age, this.gender, this.img, this.address);

  static List<ModelData> modelData() {
    return [
      ModelData("Nice Name", "26", "Female", "profile_image/person_1.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_2.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_3.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_4.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_5.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_6.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_1.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_2.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_3.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_4.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_5.jpg",
          "Uttara, dhaka - 1230"),
      ModelData("Nice Name", "26", "Female", "profile_image/person_6.jpg",
          "Uttara, dhaka - 1230"),
    ];
  }
}
