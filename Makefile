S3_TARGET = s3://ukpds.devci/

.dummy: deploy

deploy:
	aws s3 sync --acl=public-read --delete ./public $(S3_TARGET)
