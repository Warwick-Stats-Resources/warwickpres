# warwickpres format

This is a Quarto Revealjs presentation format that is consistent with The University of Warwick's [brand](https://warwick.ac.uk/about/brand/).

It offers the following:

- The University of Warwick logo on the title slide
- A theme consistent with the University of Warwick's brand [colours](https://warwick.ac.uk/about/brand/brand-guidelines/colours/), including an inverse class
- A font (Lato) consistent with the University of Warwick's [typography](https://warwick.ac.uk/about/brand/brand-guidelines/typography/) guidelines
- Colours consistent with the brand for quarto callouts
- A custom syntax highlighting theme consistent with the brand colours
- Additional convenience classes for sizing and aligning

For plotting, it goes hand-in-hand with [warwickplots](https://warwick-stats-resources.github.io/warwickplots), an R package with colour palettes and a ggplot2 theme that are consistent with The University of Warwick’s branding.

Users of warwickpres may also be interested in [warwickcourse](https://github.com/warwick-stats-resources/warwickcourse), a quarto template for University of Warwick branded course/workshop websites.

## Installing warwickpres

```bash
quarto use template Warwick-Stats-Resources/warwickpres
```

This will install the extension and create an example `.qmd` file that you can use as a starting place for your presentation. This also serves as documentation.

## Workflow for using this extension in RStudio with git/GitHub/gh-pages

I have found it a bit fiddly to get this working with RStudio projects.
The following workflow works well for me. There may be a other/better ways.

Before using this workflow for the first time, check that you have git set up to use 'main' as the default branch.

1. Run `usethis::git_sitrep()` and check that the default initial branch name is 'main'.
2. If it not 'main', change the configuration by running `usethis::use_git_config(init.defaultBranch = "main")`.

When you want to start a new project with the template:

1. Close the current project (if one is open).
2. In the RStudio terminal, navigate to the parent directory in which you want to save the project.
3. Run the following, and, as prompted, trust the author then name the directory you want to create

``` bash
quarto use template Warwick-Stats-Resources/warwickpres
```

4. In RStudio Files pane, navigate to the directory just created
5. The directory should contain a warwickpres.Rproj. Click on that to launch the project.
    - If you have lots of directories from the same extension, may want to rename the .Rproj file to something unique, e.g. to share the directory name (to make file search easier)
6. In the RStudio console, run `usethis::use_git()` and follow through the prompts.
7. After restarting as prompted, run `usethis::use_github()`
8. You may want to add a README.md at this point. 
9. Work in the `.qmd` file created in the directory, which will share a name with the directory.
10. Commit, push, etc as often as you wish!
11. When the presentation is ready to publish, run `quarto publish gh-pages` in RStudio terminal. This creates a `gh-pages` branch, and the website https://USER.github.io/REPO (where USER is your GitHub username and REPO is the name of the repository).
12. Keep working in `main` branch. When ready to publish again, run `quarto publish gh-pages`. This brings `gh-pages` branch in sync with `main`. Repeat as often as need be. You could also use a GitHub Action to update the published version on each push, as per this [quarto documentation](https://quarto.org/docs/publishing/github-pages.html#github-action).

I have documented an R/RStudio/GitHub workflow because that's what I use. Quarto also works well in other IDEs, especially VSCode, and with other programming languages, so of course feel free to adapt this workflow for your use case.

## Example

Here is the source code for a minimal sample document: [template.qmd](template.qmd)

And here it is online: <https://warwick-stats-resources.github.io/warwickpres>

These files together demonstrate what the warwickpres extension offers and how to use it.
