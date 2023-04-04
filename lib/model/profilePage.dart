class ProfileData {
  String title;
  String subtitle;
  String iconUrl;

  ProfileData({
    required this.title,
    required this.subtitle,
    required this.iconUrl,
  });
}

List<ProfileData> profileList = [
  ProfileData(
    title: "Personal Details",
    subtitle: "Your personal information",
    iconUrl: "http://cdn.onlinewebfonts.com/svg/img_308270.png",
  ),
  ProfileData(
    title: "Bookings Details",
    subtitle: "History of bookings.",
    iconUrl: "https://static.thenounproject.com/png/4028548-200.png",
  ),
  // ProfileData(
  //   title: "Habits",
  //   subtitle: "Set Your Habits",
  //   iconUrl: "https://static.thenounproject.com/png/3575077-200.png",
  // ),
];
