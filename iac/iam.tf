resource "aws_iam_openid_connect_provider" "oidc-git" {
    url = "https://token.actions.githubusercontent.com"
    client_id_list = ["sts.amazonaws.com"]
    

    thumbprint_list = ["cf23df2207d99a74fbe169e3eba035e633b65d94"]
    
    tags = {
        IAC = "true"
    }
}

resource "aws_iam_role" "ecr-role" {
  name = "ecr-role"

  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "sts:AssumeRoleWithWebIdentity",
            "Principal": {
                "Federated": "arn:aws:iam::388839923933:oidc-provider/token.actions.githubusercontent.com"
            },
            "Condition": {
                "StringEquals": {
                    "token.actions.githubusercontent.com:aud": [
                        "sts.amazonaws.com"
                    ]
                },
                "StringLike": {
                    "token.actions.githubusercontent.com:sub": [
                        "repo:Popotomimi/concepts_docker:ref:refs/heads/main",
                        "repo:Popotomimi/concepts_docker:ref:refs/heads/main"
                    ]
                }
            }
        }
    ]
    })

    inline_policy {
        name = "ecr-app-permission"
        policy = jsonencode({
            "Version": "2012-10-17",
            "Statement": [
                {
                    Sid = "Statement1",
                    Action = [
                        "ecr:GetDownloadUrlForLayer",
                        "ecr:BatchGetImage",
                        "ecr:BatchCheckLayerAvailability",
                        "ecr:PutImage",
                        "ecr:InitiateLayerUpload",
                        "ecr:UploadLayerPart",
                        "ecr:CompleteLayerUpload",
                        "ecr:GetAuthorizationToken"
                    ]
                    Effect = "Allow",
                    Resource = "*"
                }
            ]
        })
    }

  tags = {
    IAC = "True"
  }
}