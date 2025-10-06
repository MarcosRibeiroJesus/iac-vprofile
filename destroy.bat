@echo off
echo WARNING: This will destroy ALL AWS resources created by Terraform!
set /p confirm="Type 'destroy' to confirm: "
if "%confirm%"=="destroy" (
    cd terraform
    terraform init -backend-config="bucket=%BUCKET_TF_STATE%"
    terraform destroy
) else (
    echo Destroy cancelled.
)