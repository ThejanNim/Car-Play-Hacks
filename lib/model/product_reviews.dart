class ProductReviewsModel {
  final int id;
  final int product_id;
  final String review;
  final String reviewer;
  final ReviewerAvatars reviewer_avatar_urls;

  ProductReviewsModel(
      {required this.id,
      required this.product_id,
      required this.review,
      required this.reviewer,
      required this.reviewer_avatar_urls});

  factory ProductReviewsModel.fromJson(Map<String, dynamic> json) {
    return ProductReviewsModel(
        id: json['id'],
        product_id: json['product_id'],
        review: json['review'],
        reviewer: json['reviewer'],
        reviewer_avatar_urls:
            ReviewerAvatars.fromJson(json['reviewer_avatar_urls']));
  }
}

class ReviewerAvatars {
  final String src24;
  final String src48;
  final String src96;

  ReviewerAvatars(
      {required this.src24, required this.src48, required this.src96});

  factory ReviewerAvatars.fromJson(Map<String, dynamic> json) {
    return ReviewerAvatars(
        src24: json['24'], src48: json['48'], src96: json['96']);
  }
}
