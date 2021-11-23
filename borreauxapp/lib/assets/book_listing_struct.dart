class newListing{


  late String bookCoverPicPath;
  late String username;
  late String profilePicPath;
  late String dayRate;
  late String weekRate;
  late String monthRate;
  late bool bookmarked;
  late double rating;
  late String bookTitle;

  newListing(bookCoverPicPath, 
            username,
            profilePicPath,
            dayRate,
            weekRate,
            monthRate,
            bookmarked,
            rating,
            bookTitle){

              this.bookCoverPicPath = bookCoverPicPath;
              this.username = username;
              this.profilePicPath = profilePicPath;
              this.dayRate = dayRate;
              this.weekRate = weekRate;
              this.monthRate = monthRate;
              this.bookmarked = bookmarked;
              this.rating = rating;
              this.bookTitle = bookTitle;
            }

}