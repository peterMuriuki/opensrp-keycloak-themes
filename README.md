# Opensrp Web Keycloak Themes

## Overview

The [opensrp web](https://github.com/opensrp/web) uses [Keycloak](https://www.keycloak.org/) as an IAM provider. We have several opensrp web deployed instances. These instances can use a single keycloak server with different realms for each of the deployed web instances. We can then override the keycloak's defualt look and feel for each of the instances at the realm level. This repository holds the custom themes for the different keycloak realms.

## Developing and Testing 

### Using docker

```
docker compose up
```

Access a running keycloak application at https://localhost:8080

This binds the themes folder to the container's keycloak themes folder. Themes caching is disabled so feel free to test out changes to the themes as you make them.

**Changing themes**

1. Go to `http://localhost:8080/auth/admin/master/console/#/realms/master/theme-settings`
2. There is a form with the different types of themes that can be applied.


TODO:
- Configurable labels