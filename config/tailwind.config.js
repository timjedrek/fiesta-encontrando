const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        curs: ['"Euphoria Script"', 'cursive'],
      },
      backgroundImage : {
        'randomhead0' : "url('home_banner/0.jpg')",
        'randomhead1' : "url('home_banner/1.jpg')",
        'randomhead2' : "url('home_banner/2.jpg')",
        'randomhead3' : "url('home_banner/3.jpg')",
        'randomhead4' : "url('home_banner/4.jpg')",

      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
