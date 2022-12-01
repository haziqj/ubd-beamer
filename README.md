# UBD Beamer Theme

This is the unofficial beamer theme designed for [Universiti Brunei Darussalam](https://ubd.edu.bn), featuring a minimalistic design and a pastel-ised palette taken from UBD's colours.
View the [PDF slides](https://github.com/haziqj/ubd-beamer/blob/main/slides_rmd.pdf).

<div style="float:left">
  <img src="images/slides-1.png" width="49%" border=0>
  <img src="images/slides-2.png" width="49%" border=0>
  <img src="images/slides-3.png" width="49%" border=0>
  <img src="images/slides-4.png" width="49%" border=0>
</div>

## Usage

To use this theme, copy the 

1. `beamerthemeUBD.sty`; and
2. `ubd_brand.pdf` 

and place these together in your working directory.
Use the sample `minimal_example.tex` file as a guide.

Additionally, if using Rmd (in RStudio for example), then add also

3. `ubd_beamer_rmd.tex`; and
4. `luafilters/` folder

to your working directory.
Edit the `slides_rmd.Rmd` to your liking.

## Beamer options

- `progressdots` provides progress dots by sections at the top of each slide.
- `transitions` provides transition slides between sections.
