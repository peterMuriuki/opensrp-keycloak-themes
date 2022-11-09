# Contributing Guide

## Versioning

### if Modifying themes only.

1. Add/ Make changes to the themes
2. If you add a theme make sure to mount the theme in the Docker compose file
3. Run compose command `docker compose up`
4. Test that the changes work on the target keycloak version. I reasonably expect the keycloak versions will always be incrementing.
5. Tag a release with the following format `v${keycloak-version}-rc${incrementing-integer}`, for e.g. if the current release is `v18.0.0-legacy-rc1`, then the next will be `v18.0.0-legacy-rc2`

### if Moving to use a newer keycloak version

1. Update the keycloak image version in `./Dockerfile.dev`
2. Run compose command `docker compose up`
3. Ensure the themes still work on the new version. Unfortunately we have to do so manually at the moment. [if you have an idea of how we can automate, kindly reach out by opening an issue.]
4. Tag a new release, the format is `v${keycloak-version}-rc1`
