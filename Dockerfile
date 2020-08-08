FROM lambci/lambda:build-python3.8

ENV AWS_DEFAULT_REGION ap-northeast-2
ENV APP_DIR /var/task

ADD . .

CMD pip install -r requirements.txt -t $APP_DIR && \
  zip -9 deploy_package.zip lambda_function.py && \
  zip -r9 deploy_package.zip *