const defaultTheme = require('tailwindcss/defaultTheme')


module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*'
  ],
  theme: {
    colors: {
      'blue': '#FF0000',
      'black-100': '#313131',
      'gray-100': '#dedede',
      'gray-400': '#616161',
      'green-200': '#6fca3d',
      'white': '#FFFFFF',
    },
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        jost: ['Jost', 'sans-serif'],
        'open-sans': ['Open Sans', 'sans-serif']
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
