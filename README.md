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

See something that looks wrong or that you don't like? [File an
issue!](https://github.com/jsit/toast.vim/issues)

Much of the basis for this code and approach comes from Chris Kempson's
venerable Tomorrow theme.

## Installation

Vim:

```sh
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/toast.vim https://raw.githubusercontent.com/jsit/toast.vim/master/colors/toast.vim
```

Neovim:

```sh
mkdir -p ~/.config/nvim/colors
curl -o ~/.config/nvim/colors/toast.vim https://raw.githubusercontent.com/jsit/toast.vim/master/colors/toast.vim
```

## Customization

To use the light version:

```vim
set background=light
colorscheme toast
```
To use the dark version:

```vim
set background=dark
colorscheme toast
```

If your terminal emulator and version of Vim support true color:

```vim
set termguicolors
```

Set up autocmd overrides to change the colors to your liking. For instance, if
you don't want red to be used for constants and strings, you can link them to a
different highlight group with something like this in your `.vimrc` (Vim) or
`init.vim` (Neovim):

```vim
augroup toast
  autocmd colorscheme toast hi clear Constant | hi link Constant Type
augroup END
```

## Colors

### Colors

<table>
<tr>
  <td></td>
  <td>Red</td>
  <td>Green</td>
  <td>Yellow</td>
  <td>Blue</td>
  <td>Magenta</td>
  <td>Cyan</td>
</tr>

<tr>
  <td>Normal</td>
  <td bgColor="#d12d00" style="background-color: #d12d00; color: #fff;">#d12d00</td>
  <td bgColor="#427b00" style="background-color: #427b00; color: #fff;">#427b00</td>
  <td bgColor="#b68200" style="background-color: #b68200;">#b68200</td>
  <td bgColor="#006fd1" style="background-color: #006fd1; color: #fff;">#006fd1</td>
  <td bgColor="#a53bce" style="background-color: #a53bce; color: #fff;">#a53bce</td>
  <td bgColor="#119c97" style="background-color: #119c97; color: #fff;">#119c97</td>
</tr>

<tr>
  <td>Bright</td>
  <td bgColor="#e74d23" style="background-color: #e74d23; color: #fff;">#e74d23</td>
  <td bgColor="#7dc030" style="background-color: #7dc030;">#7dc030</td>
  <td bgColor="#ffc233" style="background-color: #ffc233;">#ffc233</td>
  <td bgColor="#5aa2e0" style="background-color: #5aa2e0;">#5aa2e0</td>
  <td bgColor="#b968d9" style="background-color: #b968d9;">#b968d9</td>
  <td bgColor="#15c1bb" style="background-color: #15c1bb;">#15c1bb</td>
</tr>
</table>

### Grays

<table>
<tr>
  <td>Light Background</td>
  <td bgColor="#f4f3ef" style="background-color: #f4f3ef;">#f4f3ef</td>
  <td bgColor="#eae8e1" style="background-color: #eae8e1;">#eae8e1</td>
  <td bgColor="#e4e2d8" style="background-color: #e4e2d8;">#e4e2d8</td>
  <td bgColor="#7f7757" style="background-color: #7f7757; color: #fff;">#7f7757</td>
  <td bgColor="#4f4a36" style="background-color: #4f4a36; color: #fff;">#4f4a36</td>
  <td bgColor="#423e2e" style="background-color: #423e2e; color: #fff;">#423e2e</td>
  <td bgColor="#323434" style="background-color: #323434; color: #fff;">#323434</td>
</tr>
<tr>
  <td>Dark Background</td>
  <td bgColor="#c3d2df" style="background-color: #c3d2df;">#c3d2df</td>
  <td bgColor="#b9cbda" style="background-color: #b9cbda;">#b9cbda</td>
  <td bgColor="#acc1d3" style="background-color: #acc1d3;">#acc1d3</td>
  <td bgColor="#547d9c" style="background-color: #547d9c; color: #fff;">#547d9c</td>
  <td bgColor="#253846" style="background-color: #253846; color: #fff;">#253846</td>
  <td bgColor="#1e2d38" style="background-color: #1e2d38; color: #fff;">#1e2d38</td>
  <td bgColor="#17222b" style="background-color: #17222b; color: #fff;">#17222b</td>
</tr>
</table>

## Et cetera

The font used in the screenshots is [IBM Plex Mono](https://github.com/IBM/plex).

## License

Copyright (c) Jay Sitter. Distributed under the same terms as Vim itself. See
:help license.
