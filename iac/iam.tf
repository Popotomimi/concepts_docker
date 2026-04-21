resource "aws_iam_openid_connect_provider" "oidc-git" {
    url = "https://token.actions.githubusercontent.com"
    client_id_list = ["sts.amazonaws.com"]
    

    thumbprint_list = ["cf23df2207d99a74fbe169e3eba035e633b65d94"]
    
    tags = {
        IAC = "true"
    }
}