resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = var.candidate_id
  ## Jim; seriously! we can use any word here.. How cool is that?
  dashboard_body = <<DEATHSTAR
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "carts.value"
          ]
        ],
        "period": 10,
        "unit": "carts",
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total number of carts"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "cartsvalue.value"
          ]
        ],
        "period": 10,
        "units": "NOK",
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Value in cart"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "checkouts.value"
          ]
        ],
        "period": 10,
        "units": "checkouts",
        "stat": "Maximum",
        "region": "eu-west-1",
        "title": "Total Checkouts"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "${var.candidate_id}",
            "checkouts_latency.value"
          ]
        ],
        "period": 10,
        "units": "time",
        "stat": "Average",
        "region": "eu-west-1",
        "title": "Checkouts_Latency"
      }
    }
  ]
}
DEATHSTAR
}