# ColdBox Inertia

This is a POC using [Jonathan Reinink's](https://reinink.ca/) [InertiaJS](https://github.com/inertiajs)
framework with [ColdBox](https://www.coldbox.org/) and [ColdBox Elixir](https://coldbox-elixir.ortusbooks.com/) on the
backend and [VueJS](https://vuejs.org/) on the frontend.  Check out Jonathan's [intro video](https://reinink.ca/articles/getting-started-with-inertia-js)
to get a better feel of what InertiaJS offers.

## Installation

`box install`
`npm install`
`npm run dev`
`box server start`

## Usage

Click around the app and notice that no full page refreshes are being made.  If you hard reload a page, the same component
appears.  This isn't server-side rendering the way Nuxt or Next does it, but rather the first request is a traditional
server-side request and subsequent requests are transformed by Inertia to new components (Vue components in this case).
