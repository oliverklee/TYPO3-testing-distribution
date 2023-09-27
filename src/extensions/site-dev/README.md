# TYPO3 development site extension

This is a TYPO3 extension that contains the basics of a site which
I use for developing in TYPO3. It helps to create a working site
with navigation and nice CSS extremely quickly.

In addition, minification and concatenation of JavaScript and CSS is
disabled, making debugging less of a pain.

## Installation

This package should only be installed via Composer, not from the TER.

### Installing the package via Composer

Require the package `"oliverklee/site-dev"`.

### Within the TYPO3 back end

1. Uninstall the extension css_styled_content (if it is installed).
2. Install the extension fluid_styled_content (provided by the Core).
3. In your TypoScript template, include the following static templates:
    * Content Elements (fluid_styled content)
    * Content Elements CSS (optional) (fluid_styled content)
    * TYPO3 development site (site-dev)

### favicon.ico

There's a small favicon.ico in ```Resources/Public/Icons/```
for copying to your site root.
