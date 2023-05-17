# warwickpres format

*Currently a work-in-progress, not quite ready for general use.*

This is a Quarto presentation format that is consistent with The University of Warwick's [ID7 branding](https://id7.warwick.ac.uk) (especially [colours](https://id7.warwick.ac.uk/components/colour-palette/) and [font](https://warwick.ac.uk/services/its/servicessupport/web/sitebuilder2/id7/faqs/fonts/)).

## Installing

```bash
quarto use template Warwick-Stats-Resources/warwickpres
```

This will install the extension and create an example qmd file that you can use as a starting place for your article.

### Workflow for using Quarto template in RStudio

Before using this workflow for the first time, check that you have git set up to use 'main' as the default branch.

1. Run `usethis::git_sitrep()` and check that the default initial branch name is 'main'.
2. If it not 'main', change the configuration by running `usethis::use_git_config(init.defaultBranch = "main")`.

When you want to start a new project with the template:

1. Close the current project.
2. In the RStudio terminal, navigate to the parent directory in which you want to save the project.
3. Run `quarto use template Warwick-Stats-Resources/warwickpres` and, as prompted, trust the author then name the directory you want to create.
4. In RStudio Files pane, navigate to the directory just created
5. The directory should contain a .Rproj file named after the template. Click on that to launch the project.
    - If you have lots of directories from the same extension, may want to rename the .Rproj file to something unique (to make file search easier)
6. In the RStudio console, run `usethis::use_git()`.
7. After restarting as prompted, run `usethis::use_github()`
8. You want to add a README.md at this point.
9. Work in the `.qmd` file created in the directory, which will share a name with the directory.
10. Commit, push, etc as often as you wish!
11. When the presentation is ready to publish, run `quarto publish gh-pages` in RStudio terminal. This creates a `gh-pages` branch, and the website https://username.github.io/reponame.
12. Keep working in `main` branch. When ready to publish again, run `quarto publish gh-pages`. This brings `gh-pages` branch in sync with `main`.
13. Repeat as often as need be!

## Using

*TODO*: Describe how to use your format.

## Format Options

*TODO*: If your format has options that can be set via document metadata, describe them.

## Example

Here is the source code for a minimal sample document: [template.qmd](template.qmd).
