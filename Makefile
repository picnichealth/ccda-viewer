.PHONY: deploy
deploy:
	gcloud storage cp -r * gs://ccda.picnichealth.com
	gsutil -m setmeta -h "Cache-Control:no-cache, no-store, must-revalidate" gs://ccda.picnichealth.com/**
