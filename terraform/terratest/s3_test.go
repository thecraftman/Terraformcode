package aws

import (
"fmt"
"testing"

"github.com/gruntwork-io/terratest/modules/aws"
"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestWebServer(t *testing.T) {
    terraformOptions := &terraform.Options{
    // The path to where your Terraform code is located
    TerraformDir: "../terraform/terratest/s3_test.go",
}


terraform.InitAndApply(t, terraformOptions)

name := terraform.Output(t, terraformOptions, "flugel-bucket")
region := terraform.Output(t, terraformOptions, "us-east-2")
aws.AssertS3BucketExists(t, us-east-2, flugel-bucket)