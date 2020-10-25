# Toast!

Toast! A colorful, medium-contrast theme with full Vim and Neovim support, true
color and 256-color support, and automatic light and dark variants. Easy to read
without frying your retinae.

[![Toast Light](https://live.staticflickr.com/65535/50524666302_001703f6b1_b.jpg)](https://flic.kr/p/2jYG83f)
[![Toast Dark](https://live.staticflickr.com/65535/50524666187_1866f8a909_b.jpg)](https://flic.kr/p/2jYG81g)

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

## Customization

Set up autocmd overrides to change the colors to your liking. For instance, if
you don't want red to be used for constants and strings, you can link them to a
different highlight group with something like this in your `.vimrc` (Vim) or
`init.vim` (Neovim):

```vim
augroup toast
  autocmd colorscheme toast hi clear Constant | hi link Constant Type
augroup END
```

To disable italics:

```vim
augroup toast
  autocmd colorscheme toast hi Comment cterm=NONE gui=NONE
  autocmd colorscheme toast hi Folded cterm=NONE gui=NONE
  autocmd colorscheme toast hi Todo cterm=reverse gui=reverse
augroup END
```

## Et cetera

The font used in the screenshots is [IBM Plex Mono](https://github.com/IBM/plex).

## License

Copyright (c) Jay Sitter. Distributed under the same terms as Vim itself. See
:help license.
