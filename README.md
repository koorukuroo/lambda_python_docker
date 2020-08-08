# Lambda Function Create
```
aws s3 cp deploy_package.zip s3://YOUR_FOLDER
aws lambda create-function --function-name {{FUNCTION_NAME}} --runtime python3.8 --code S3Bucket={{YOUR_FOLDER}},S3Key=deploy_package.zip --handler lambda_function.lambda_handler --role arn:aws:iam::{{YOUR_ACC}}:role/{{ROLE_NAME}} --region ap-northeast-2
```

# Lambda Function Update
```
aws lambda update-function-code --function-name {{FUNCTION_NAME}} --zip-file fileb://deploy_package.zip
```
