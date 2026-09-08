# Results synthesis of the ten selected papers.
# Install once if needed: install.packages("knitr")
# In Quarto: source("results-synthesis.R"); results_table
# Optional detail: evidence_table
# The underlying ordinary R data frames are results_data and evidence_data.
if (!requireNamespace("knitr", quietly = TRUE)) {
  stop('Install knitr first: install.packages("knitr")')
}

results_data <- data.frame(
  stage = c("**1. Formation**",
    "**2. Expansion**",
    "**2. Expansion**",
    "**3. Regional consequences**",
    "**3. Regional consequences**",
    "**3. Regional consequences**",
    "**4. Explanatory mechanisms**",
    "**5. Interpretive boundary**"),
  focus = c("**Ancestry origins and pre-Yamnaya steppe contacts**",
    "**Westward movement into Europe**",
    "**Eastward movement into Inner Asia**",
    "**Britain: migration and cultural transmission**",
    "**Estonia: farming and ancestry**",
    "**Kinship and social organisation**",
    "**Horses and technology**",
    "**Indo-European languages**"),
  finding = c("Yamnaya ancestry includes Caucasus-related and eastern European hunter-gatherer contributions. Steppe contact with the Balkans occurred by **4711–4450 BCE**, well before the main expansion.",
    "German Corded Ware individuals carry about **73% Yamnaya-related ancestry**. Shared inherited DNA segments place the connection within a few hundred years, supporting substantial migration and mixture with European farmers.",
    "Afanasievo groups in the Altai and Mongolia have close Yamnaya ancestry and recent shared ancestors. Later persistence in Xinjiang contrasts with declining Afanasievo ancestry in Mongolia.",
    "Beaker-associated migration after about **2450 BCE** led to major population turnover in Britain. Limited affinity between Iberian and central European Beaker groups supports cultural transmission in other settings.",
    "Estonia's Corded Ware farmers carried steppe ancestry. Different ancestry patterns on the X chromosome and other chromosomes suggest greater male steppe input and female early-farmer input.",
    "The 15 Koszyce massacre victims formed an extended family without steppe ancestry. Their burial positions followed kin relationships, and the genetic pattern suggests descent organised through male lines.",
    "The modern domestic horse lineage spread rapidly around **2200–2000 BCE**, after the initial human expansion around 3000 BCE. This timing challenges horses as its primary driver.",
    "The migrations provide plausible settings for the spread of some Indo-European languages. The authors also propose an Afanasievo–Tocharian connection; the Balkan data constrain a simple steppe route into Anatolia."),
  papers = c("[Jones 2015](https://doi.org/10.1038/ncomms9912); [Mathieson 2018](https://doi.org/10.1038/nature25778)",
    "[Haak 2015](https://doi.org/10.1038/nature14317); [Allentoft 2015](https://doi.org/10.1038/nature14507); [Ringbauer 2024](https://doi.org/10.1038/s41588-023-01582-w)",
    "[Allentoft 2015](https://doi.org/10.1038/nature14507); [Wang 2021](https://doi.org/10.1038/s41586-021-03336-2); [Ringbauer 2024](https://doi.org/10.1038/s41588-023-01582-w)",
    "[Olalde 2018](https://doi.org/10.1038/nature25738)",
    "[Saag 2017](https://doi.org/10.1016/j.cub.2017.06.022)",
    "[Schroeder 2019](https://doi.org/10.1073/pnas.1820210116)",
    "[Librado 2021](https://doi.org/10.1038/s41586-021-04018-9), compared with [Haak 2015](https://doi.org/10.1038/nature14317) and [Allentoft 2015](https://doi.org/10.1038/nature14507)",
    "[Haak 2015](https://doi.org/10.1038/nature14317); [Allentoft 2015](https://doi.org/10.1038/nature14507); [Wang 2021](https://doi.org/10.1038/s41586-021-03336-2); [Mathieson 2018](https://doi.org/10.1038/nature25778)"),
  limit = c("These papers do not establish the exact place, route or timing of Yamnaya formation. Earlier Balkan contact is not the later Yamnaya expansion.",
    "The sampled Yamnaya groups need not be the exact source of every Corded Ware population. The 73% estimate is not a figure for all Europe.",
    "Intermediate routes are incompletely sampled. An Afanasievo burial context does not always imply Yamnaya ancestry.",
    "Cultural spread and migration differed by region. British turnover is a later development, not a direct measure of the initial Yamnaya expansion.",
    "This small regional sample links migration with farming; it does not describe the diet or everyday life of all Yamnaya communities.",
    "These were neighbouring Globular Amphora people. The attackers and motive are unknown; the grave cannot establish that incoming steppe groups caused the violence.",
    "Horse genomes do not identify every earlier riding or transport practice. These ten papers do not systematically test wagons or metallurgy.",
    "**No paper directly identifies spoken language.** These are interpretations combining population history with archaeological and linguistic arguments."),
  stringsAsFactors = FALSE
)

results_table <- knitr::kable(
  results_data,
  format = "pipe",
  align = "l",
  col.names = c("Stage", "Focus", "Synthesised result", "Supporting studies",
                "Interpretive limit"),
  caption = "From formation to inference: a structured synthesis of the ten papers"
)

evidence_data <- data.frame(
  study = c("[Haak et al. (2015)](https://doi.org/10.1038/nature14317)",
    "[Allentoft et al. (2015)](https://doi.org/10.1038/nature14507)",
    "[Olalde et al. (2018)](https://doi.org/10.1038/nature25738)",
    "[Mathieson et al. (2018)](https://doi.org/10.1038/nature25778)",
    "[Wang et al. (2021)](https://doi.org/10.1038/s41586-021-03336-2)",
    "[Jones et al. (2015)](https://doi.org/10.1038/ncomms9912)",
    "[Librado et al. (2021)](https://doi.org/10.1038/s41586-021-04018-9)",
    "[Schroeder et al. (2019)](https://doi.org/10.1073/pnas.1820210116)",
    "[Saag et al. (2017)](https://doi.org/10.1016/j.cub.2017.06.022)",
    "[Ringbauer et al. (2024)](https://doi.org/10.1038/s41588-023-01582-w)"),
  evidence = c("69 ancient Europeans; DNA marker capture and ancestry models.",
    "101 ancient Eurasian genomes; population comparisons.",
    "400 ancient Europeans, including 226 Beaker-associated individuals; ancestry models and dating.",
    "225 ancient individuals, mainly southeastern Europe; ancestry models and dating.",
    "166 new ancient East Asian individuals, 130 in the main analysis; ancestry models.",
    "3 new genomes: 2 Caucasus and 1 Swiss hunter-gatherer; comparisons with published Yamnaya genomes.",
    "273 ancient horse genomes across Eurasia; ancestry and geographic comparisons.",
    "15 Koszyce victims, 2880–2776 BCE, plus 9 nearby individuals; genomes, kinship and skeletal evidence.",
    "10 Estonians: 5 hunter-gatherers and 5 Corded Ware farmers; chromosome and lineage comparisons.",
    "4,248 published ancient genomes; 304 in the focused comparison; inherited DNA segment analysis."),
  result = c("German Corded Ware ancestry is about 73% Yamnaya-related, with a retained farmer contribution. Supports substantial westward migration in the early third millennium BCE.",
    "Corded Ware shows strong Yamnaya affinity; sampled Afanasievo is genetically indistinguishable from Yamnaya. Supports expansion in both directions.",
    "Britain shows a minimum **90 ± 2% population turnover by 1500–1000 BCE**. Iberian and central European Beaker groups have limited genetic affinity.",
    "Two Balkan individuals dated 4711–4450 BCE show early steppe ancestry. The data do not support a large steppe migration through the Balkans into Bronze Age Anatolia.",
    "Mongolian Afanasievo around 3100 BCE resembles Yamnaya. That ancestry later declines in Mongolia but persists farther west in Xinjiang; one Afanasievo-context child lacks it.",
    "Identifies a distinct Caucasus hunter-gatherer lineage. In this model, Caucasus-related sources contribute roughly half of Yamnaya ancestry.",
    "Locates the source of the modern domestic lineage in the lower Volga–Don. Its rapid dispersal around 2200–2000 BCE follows the first Yamnaya expansion.",
    "Victims lack steppe ancestry; they are an extended family with fatal head injuries and burial arrangements reflecting kinship.",
    "Farmers carry steppe ancestry. Results suggest male-biased steppe contributions and female-mediated early-farmer contributions during population movement.",
    "Corded Ware–Yamnaya segments extend up to 20 centimorgans. Recent connections involve Yamnaya and Globular Amphora ancestry; Yamnaya–Afanasievo links are also recent."),
  limitation = c("Small regional groups; Samara Yamnaya may represent a related source rather than the direct migrants.",
    "Low sequencing coverage and small local samples limit regional detail.",
    "Burial sampling may be selective; the exact continental source is uncertain. Turnover does not mean 90% unmixed Yamnaya ancestry.",
    "Relevant early-contact and Anatolian subsets are small; alternative routes remain unresolved.",
    "Uneven sampling and similar candidate sources permit alternative ancestry models.",
    "Two Caucasus genomes establish an ancestry affinity, not a dated migration route.",
    "Human travel practices cannot be read directly from horse ancestry; geographic preservation is uneven.",
    "A single mass grave cannot represent all communities or identify the perpetrators.",
    "Only 7 individuals enter autosomal analyses; small, low-coverage samples limit generalisation.",
    "Detection depends on sequencing coverage and inferred genotypes; reliability is strongest for segments longer than 8 centimorgans."),
  stringsAsFactors = FALSE
)

evidence_table <- knitr::kable(
  evidence_data,
  format = "pipe",
  align = "l",
  col.names = c("Study", "Evidence used", "Result relevant to the review",
                "Main limitation"),
  caption = "Evidence from the ten selected papers"
)

