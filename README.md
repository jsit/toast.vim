# Toast!

Toast! A colorful, medium-contrast theme with full Vim and Neovim support, true
color and 256-color support, and automatic light and dark variants. Easy to read
without frying your retinae.

[![Toast Light](https://live.staticflickr.com/65535/50524666302_4e8a95d332_b.jpg)](https://flic.kr/p/2jYG83f)
[![Toast Dark](https://live.staticflickr.com/65535/50524666187_e1ecd3b905_b.jpg)](https://flic.kr/p/2jYG81g)

Toast is not meant to be a "color system" or anything fancy like that,
although it does operate within a few parameters to make its development
easier and to aim for some degree of theoretical color harmony.

- All text has (or should have) a contrast ratio of at least 3:1, meeting WCAG
  level A. (Level AA across the board makes the colors too drab for my taste,
  but there will be an option for this in the future, because a11y is
  important.)
- All hues are multiples of 15 degrees apart on the color wheel, because why
  not.
- Within these parameters, saturation and luminance levels are chosen based on
  what I think looks good while dogfooding the themes.

Much of the basis for this code and approach comes from Chris Kempson's
venerable Tomorrow theme.

# License

Copyright (c) Jay Sitter. Distributed under the same terms as Vim itself. See
:help license.