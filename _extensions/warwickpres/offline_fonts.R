readLines("./_extensions/Warwick-Stats-Resources/warwickpres/_extension.yml") |>
    sub("#- fonts", "- fonts", x = _) |>
    writeLines(
        "./_extensions/Warwick-Stats-Resources/warwickpres/_extension.yml"
    )
