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
      'black-200': '#1F232C',
      'gray-100': '#dedede',
      'gray-400': '#616161',
      'gray-200': '#7B828C',
      'gray-300': '#F1F1F3',
      'green-200': '#6fca3d',
      'green-100': '#F0F9EB',
      'green-400': '#4D8D2A',
      'green-500': '#427924',
      'white': '#FFFFFF',
      'red-100': '#cd5c5c',
      'red-200': '#e60026',
      'orange-100': '#FFE36E',
      'orange-200': '#FA9579',
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
