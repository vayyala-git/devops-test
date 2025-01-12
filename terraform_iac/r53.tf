data "aws_route53_zone" "myzone" {
  name = var.domain_name
}

resource "aws_route53_record" "a_record" {
  zone_id = "${data.aws_route53_zone.myzone.zone_id}"
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = "${aws_cloudfront_distribution.cf_distribution.domain_name}"
    zone_id                = "${aws_cloudfront_distribution.cf_distribution.hosted_zone_id}"
    evaluate_target_health = false
  }
}