# Private Nuclei Templates

## detection/

- [x] detect-openam.yaml
- [x] detect-sentry.yaml
- [x] detect-timeclock.yaml
- [ ] detect-jquery-malware.yaml [Fake jQuery files infect WordPress sites with malware](https://www.bleepingcomputer.com/news/security/fake-jquery-files-infect-wordpress-sites-with-malware/)

## files/

- [ ] exposed-edgerc.yaml
- [ ] github-gitlab-recovery-code.yaml
## fuzz/

- [x] fuzz-crlf.yaml
- [x] fuzz-openredirect-via-path.yaml
- [x] log4j-waf.yaml 

## ssrf/

- [ ] first-request-line-ssrf.yaml

## takeover/http

- [x] uptimerobot-takeover.yaml
- [x] aws-bucket-takeover.yaml
- [x] webflow-takeover.yaml
- [x] announcekit-takeover.yaml
- [ ] fider-takeover.yaml

## takeover/dns

- [ ] detect-wavecdn.yaml

## vuls/

- [x] cache-poisoning.yaml
- [x] django-debug.yaml
- [x] rails-open-redirect.yaml
- [x] create-admin-elementor-page-lite-addon.yaml
- [ ] rails-host-injection.yaml
- [ ] node-red-traversal.yaml
- [x] open-redirect-spec.yaml
- [x] OpenLiteSpeed1.6-default-credentials.yaml
## xss/

- [x] url-based-xss.yaml
- [x] rxss-fcgi-py.yaml
- [x] outdated-php-mod-curl-library-rxss.yaml
- [ ] prototype-xss.yaml (headless)
- [ ] ibm-verify-xss.yaml
- [ ] s3-bucket-listing-xss.yaml

## cves/

- [x] CVE-2019-10098.yaml
- [x] CVE-2020-15500.yaml
- [x] CVE-2020-24701.yaml
- [x] CVE-2021-22175.yaml
- [x] CVE-2021-3189.yaml
- [x] CVE-2021-37704.yaml
- [ ] CVE-2021-32789.yaml
- [ ] CVE-2021-45232.yaml
## Notes

- [x] Verified - Found at least 1 vulnerable host
- [ ] Not verified
