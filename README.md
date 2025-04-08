# Elm Astro Exclusive Access Component

This repository contains an Elm component titled **Exclusive Access Card**. The component displays a call-to-action to "Get exclusive access to new products, deals & surprise treats," includes an email input field, and a subscribe button. Upon subscribing, it shows a thank-you message. The project integrates this Elm component into an Astro build.

## Project Structure

- **elm.json**: Elm project configuration file.
- **src/ExclusiveAccessCard.elm**: Elm source code for the Exclusive Access Card component.
- **styles/exclusive-access-card.css**: CSS styling for the component using a BEM-like convention.
- **astro/ExclusiveAccessCard.astro**: Astro component that embeds the Elm code.
- **public/index.html**: Optional HTML file to test the Elm component in isolation.

## Setup Instructions

### 1. Install Elm

Make sure you have [Elm installed](https://guide.elm-lang.org/install.html).

### 2. Initialize Elm Project

If `elm.json` isn’t already present, run the following command to initialize:

```bash
elm init
```
