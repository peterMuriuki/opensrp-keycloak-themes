# Opensrp Keycloak Theme

The vanilla (manually edited ftl files) themes can be found in the branch [vanilla-themes](https://github.com/opensrp/opensrp-keycloak-themes/tree/vanilla-themes)


This repository contains a custom Keycloak theme built using [Keycloakify](https://github.com/keycloakify/keycloakify) and the [Keycloakify starter repository](https://github.com/keycloakify/keycloakify-starter-webpack). The theme is designed for use with Keycloak and provides custom styling and layouts for the following authentications pages:
- Login


## Table of Contents

- [Opensrp Keycloak Theme](#opensrp-keycloak-theme)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Getting Started](#getting-started)
    - [Installation](#installation)
    - [Local Development](#local-development)
  - [Building the Theme](#building-the-theme)
  - [Deploying the Theme](#deploying-the-theme)
  - [Storybook for Local Development](#storybook-for-local-development)
  - [Contributing](#contributing)
  - [Guidelines](#guidelines)

## Features

- Fully customized Keycloak theme using Keycloakify.
- Extensible for additional custom pages and components.
- Easy local development with hot-reloading and Storybook integration.

## Getting Started

### Installation

1. Clone the repository:

    ```bash
    git clone git@github.com:onaio/opensrp-keycloak-theme.git
    cd opensrp-keycloak-theme
    ```

2. Set node version:

    ```bash
    nvm use
    # enable corepack
    corepack enable
    ```

3. Install dependencies using Yarn:

    ```bash
    yarn install
    ```

### Local Development

To start local development, you can leverage Storybook for developing and testing individual components without the need to run a Keycloak server.

1. Start the Storybook server:

    ```bash
    yarn storybook
    ```

2. Open your browser and go to [http://localhost:6006](http://localhost:6006) to view and interact with the components in Storybook.

3. To customize a page simply eject the page using:

    ```bash
    npx keycloakify eject-page
    ```

4. To view the ejected page using Storybook the command bellow and choose the page:

    ```bash
    npx keycloakify add-story
    ```

5. Make changes to the components and preview them in real time.

## Building the Theme

To build the theme and generate the `.jar` file needed for deployment:

```bash
yarn build-keycloak-theme
```
The compiled theme files will be located in the build_keycloak directory, and the theme JAR will be found in the target folder.

## Deploying the Theme
1. After building the theme, you can copy the .jar file to your Keycloak deployment.
2. Place the JAR file in Keycloak's themes directory:

    ```bash
    # Example path in a Docker setup
    cp target/my-custom-theme.jar /opt/keycloak/providers
    ```
3. Restart your Keycloak instance to apply the changes.
4. In the Keycloak Admin Console, navigate to Realm Settings > Themes, and select your custom theme for login or account pages.

## Storybook for Local Development
Storybook is used to simplify local development by allowing you to develop and test UI components in isolation. You can run Storybook using the following command:

```bash
yarn storybook
```

This will start a local development server, accessible at http://localhost:6006, where you can view the Keycloakify components in a browser. This approach helps streamline the development process without needing to run a Keycloak instance for every change.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request if you'd like to add features or report bugs.

## Guidelines
- Make sure to lint your code using the project's linting rules.
- Ensure that your changes pass all tests.
- Keep commits small and focused.