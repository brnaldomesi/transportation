# ksvin-smith-transpotation-group
Wordpress site for new luxury transportation company

## Directory Structure

This site contains static pages and a Wordpress app. Therefore, the setup that makes the most sense is as follows:

```
.
+-- README.md
+-- .gitignore
+-- ... (any other dev files)
+-- _app
+-- _landingPages
```

Where `landingPages/` contains landing pages separated into individual directories and `app/` contains all Wordpress resources (with the exception of config files). The root contains anything that would be necessary for local development. In the end, anything within the app directory gets deployed 1:1 to production (same with directories with `landingPages/`).