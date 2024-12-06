# Uranium Soil Remediation Bibliometrics
## Project Overview
This project performs a bibliometric analysis on a dataset related to uranium soil remediation. The goal is to provide a detailed analysis of the trends, influential authors, and key research topics within this field by utilizing various bibliometric methods. The analysis includes author co-citation, keyword co-occurrence, and conceptual structure analysis. Visualizations and networks are generated to highlight key patterns and connections within the research literature.

## Project Structure
The project is organized into the following main sections:

1. Data Loading: The bibliographic data is loaded from a BibTeX file, which contains references sourced from Scopus.
2. Bibliometric Analysis: Descriptive statistics are generated, including key information about the dataset such as the number of documents, authors, and sources.
3. Plot Analysis: Graphical visualizations are created to summarize the bibliometric analysis, helping to identify patterns in the dataset.
4. Conceptual Structure: Correspondence Analysis (CA) is applied to group documents by keywords, revealing thematic clusters in the research field.
5. Bibliographic Networks: Two types of bibliographic networks are generated:
 - Author Co-Citation: Visualizes the relationships between authors based on shared citations.
 - Keyword Co-Occurrences: Shows the relationships between keywords that frequently appear together in documents.

## Prerequisites
To run this project, ensure that you have the following R packages installed:
- bibliometrix: A package for bibliometric analysis in R.
- rprojroot: A package to find the project root directory.
- ggplot2: A package for data visualization.

## Example Outputs


# License
This project is licensed under the MIT License. See the LICENSE file for more details.
