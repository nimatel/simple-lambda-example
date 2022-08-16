project = "simple-lambda"

app "simple-lambda-function" {
  build {
    use "docker" {}

    registry {
      use "aws-ecr" {
        region = "us-west-2"
        repository = "simple-lambda"
        tag = "simple-lambda"
      }
    }
  }

  deploy { 
    use "aws-lambda" {
      region = "eu-east-1"
    }
  }

  release {
    use "aws-alb" {
    }
  }
}