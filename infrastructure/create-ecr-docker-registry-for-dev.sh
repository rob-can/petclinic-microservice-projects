PATH="$PATH:/usr/local/bin"
APP_REPO_NAME="rob-clarusway-repo/petclinic-app-dev"
AWS_REGION="us-east-1"

aws ecr describe-repositories --region ${AWS_REGION} --repository-name ${APP_REPO_NAME} || \
aws ecr create-repository \
--repository-name ${APP_REPO_NAME} \
--image-scanning-configuration scanOnPush=false \
--image-tag-mutability MUTABLE \
--region ${AWS_REGION}



#5.satirda pipe oncesi kod; ecr repo varsa birsey yapma, pipe sonrasi ise yoksa bu kriterlere gore ecr repo olustur demek