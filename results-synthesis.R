# Results synthesis of the ten selected papers.
# Install once if needed: install.packages("knitr")
# In Quarto: source("results-synthesis.R"); results_table
# Optional detail: evidence_table
# The underlying ordinary R data frames are results_data and evidence_data.
if (!requireNamespace("knitr", quietly = TRUE)) {
  stop('Install knitr first: install.packages("knitr")')
}

# Quarto chunk options:
#| echo: false
#| results: asis
#| warning: false
#| message: false

# Install once if needed: install.packages("knitr")

references <- c(
  Lazaridis = "[Lazaridis 2025](https://doi.org/10.1038/s41586-024-08531-5)",
  Haak = "[Haak 2015](https://doi.org/10.1038/nature14317)",
  Allentoft = "[Allentoft 2015](https://doi.org/10.1038/nature14507)",
  Mathieson = "[Mathieson 2018](https://doi.org/10.1038/nature25778)",
  Olalde = "[Olalde 2018](https://doi.org/10.1038/nature25738)",
  Saag = "[Saag 2017](https://doi.org/10.1016/j.cub.2017.06.022)",
  Schroeder = "[Schroeder 2019](https://doi.org/10.1073/pnas.1820210116)",
  Wang = "[Wang 2021](https://doi.org/10.1038/s41586-021-03336-2)",
  Librado = "[Librado 2021](https://doi.org/10.1038/s41586-021-04018-9)",
  Ringbauer = "[Ringbauer 2024](https://doi.org/10.1038/s41588-023-01582-w)"
)

cite <- function(...) {
  paste(unname(references[c(...)]), collapse = "; ")
}

synthesis <- data.frame(
  section = rep(
    c(
      "1. Formation",
      "2. Expansion",
      "3. Regional consequences and social context",
      "4. Explanatory mechanisms",
      "5. Interpretive boundary"
    ),
    times = c(1, 2, 3, 1, 1)
  ),

  conclusion = c(
    "Ancestry formation and earlier steppe contacts preceded the main expansion.",

    "Westward expansion involved substantial migration and mixture with European farmers.",

    "Eastward expansion established closely related populations whose ancestry persisted unevenly.",

    "Similar material culture accompanied different demographic processes.",

    "The arrival of farming in Estonia involved migrants with a history of sex-specific mixture.",

    "Patrilineal organisation also occurred in communities without steppe ancestry.",

    "Modern domestic horse dispersal followed the initial human expansion.",

    "Migration provides plausible settings for language spread; linguistic identity remains unverified."
  ),

  evidence = c(
    paste0(
      "Caucasus–lower Volga-related people moved into the Dnipro–Don region ",
      "and mixed with local hunter-gatherers before Core Yamnaya formation. ",
      "Separately, two Balkan individuals dated within 4711–4450 BCE ",
      "show earlier steppe contact. ",
      cite("Lazaridis", "Mathieson"), "."
    ),

    paste0(
      "German Corded Ware individuals carry about **73% Yamnaya-related ancestry**. ",
      "Broader ancestry comparisons agree; shared DNA segments place ",
      "Yamnaya–Corded Ware co-ancestry within a few hundred years. ",
      cite("Haak", "Allentoft", "Ringbauer"), "."
    ),

    paste0(
      "Sampled Afanasievo groups closely resemble Yamnaya and share recent ",
      "ancestors. Their ancestry later largely disappears in Mongolia ",
      "but persists in Xinjiang. ",
      cite("Allentoft", "Wang", "Ringbauer"), "."
    ),

    paste0(
      "Beaker-associated migration produced an estimated minimum ",
      "**90 ± 2% population turnover in Britain by 1500–1000 BCE**. ",
      "Limited genetic affinity between Iberian and central European ",
      "Beaker groups supports cultural transmission elsewhere. ",
      cite("Olalde"), "."
    ),

    paste0(
      "Estonian Corded Ware farmers carry predominantly steppe ancestry. ",
      "Greater early-farmer affinity on the X chromosome than on other ",
      "chromosomes suggests more female farmer and male steppe contributions. ",
      cite("Saag"), "."
    ),

    paste0(
      "At Koszyce, 15 Globular Amphora massacre victims lack steppe ancestry. ",
      "Genetic kinship and burial placement reveal an extended family; ",
      "related males and unrelated females suggest patrilineal organisation. ",
      cite("Schroeder"), "."
    ),

    paste0(
      "The modern domestic horse lineage spread widely around ",
      "**2200–2000 BCE**, after the initial Yamnaya-related movements ",
      "around 3000 BCE. This chronological mismatch challenges horses ",
      "as the primary driver of the initial westward expansion. ",
      cite("Librado", "Haak", "Allentoft"), "."
    ),

    paste0(
      "The authors propose links between population movements and ",
      "European Indo-European languages, an Afanasievo–Tocharian connection, ",
      "and a Caucasus–lower Volga proto-Indo-Anatolian stage. Balkan evidence ",
      "constrains a simple steppe migration route into Anatolia. ",
      cite("Haak", "Allentoft", "Wang", "Lazaridis", "Mathieson"), "."
    )
  ),

  boundary = c(
    "The ancestry models depend on sampled and unsampled proxy populations. They narrow but do not uniquely identify the formation centre. Earlier Balkan contacts do not establish a continuous later route.",

    "The 73% estimate concerns sampled German Corded Ware individuals. Exact source populations and routes remain incompletely resolved.",

    "Initial genetic similarity does not establish lasting population continuity. Archaeological affiliation alone does not identify ancestry.",

    "Population turnover is not the percentage of Yamnaya ancestry. Britain represents a later regional development, not the initial expansion.",

    "The small regional sample cannot establish a universal migration pattern. Mixture may have occurred before the migrants reached Estonia.",

    "This is evidence about one neighbouring community, not a demonstrated consequence of Yamnaya expansion. The attackers and motive remain unknown.",

    "Horse ancestry cannot resolve every earlier riding practice. The selected studies provide limited coverage of wagons and metallurgy.",

    "No study directly identifies spoken language. Genetic ancestry cannot determine language, ethnicity or the mechanism of language transmission."
  ),

  stringsAsFactors = FALSE
)

# Insert section headings within a compact three-column table.
# The section labels organise the argument, not a proven causal chain.

table_data <- do.call(
  rbind,
  lapply(unique(synthesis$section), function(section_name) {
    rows <- synthesis[
      synthesis$section == section_name,
      c("conclusion", "evidence", "boundary"),
      drop = FALSE
    ]

    heading <- data.frame(
      conclusion = paste0("**", section_name, "**"),
      evidence = "",
      boundary = "",
      stringsAsFactors = FALSE
    )

    rbind(heading, rows)
  })
)

rownames(table_data) <- NULL

results_table <- knitr::kable(
  table_data,
  format = "pipe",
  align = c("l", "l", "l"),
  row.names = FALSE,
  col.names = c(
    "Synthesised conclusion",
    "Evidence and comparison",
    "Boundary of inference"
  ),
  caption = paste(
    "Yamnaya-related expansion:",
    "substantial population movements with regionally variable outcomes."
  )
)

cat(results_table, sep = "\n")

cat(
  "\n\n",
  "**Overall synthesis.** The selected studies support substantial movement ",
  "of Yamnaya-related populations west into Europe and east into Inner Asia. ",
  "Regional differences in mixture, turnover and persistence argue against ",
  "a single homogeneous demographic process. Material culture, genetic ",
  "ancestry and language require separate lines of evidence.",
  "\n\n",
  "**Scope.** This synthesis uses only the ten selected papers: nine human ",
  "ancient-DNA studies and one horse study. Some papers reuse published ",
  "genomes, so agreement does not always represent independent samples. ",
  "Ancestry proportions and population-turnover estimates measure different ",
  "quantities and should not be compared directly. BCE denotes years ",
  "before the common era.",
  "\n",
  sep = ""
)
