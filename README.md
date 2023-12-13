# halfplus7 <img src="man/figures/package_logo.jpeg" align="right" style="width: 200px; height: 200px;"/>

Is age just a number? What age is too old or too young to date?

The "Half-Your-Age-Plus-Seven" Rule is sometimes used to decide whether or not the relative ages of individuals in a couple are appropriate. By this Rule, a person would not date someone who is younger than half their own age plus seven. This package provides several functions that apply the Rule to given ages. I (Sydney Lewis) am the original author of this package.

**Please note:** This package is meant to be silly and *NOT* to provide any absolute judgement about a couple. Relationships are complicated and a super simple mathematical formula about one aspect of the individuals involved shouldn't hold too much weight. Cheers to love and connection at every age! ❤️

# Functions

`lower_limit` : provides the lower age limit for a given age

`upper_limit` : provides the upper age limit for a given age

`age_range` : provides the appropriate age range for a given age

`check_couple` : provides a verdict about a couple, given their two ages

`ages_firstok` : provides the ages when a couple would first meet the rule, given their birth dates

# Examples:

> lower_limit(40)

[1] 27

> check_couple(30, 45)

[1] TRUE

# Link to Deployed `pkgdown` site

https://jhu-statprogramming-fall-2023.github.io/biostat777-project3-part1-sydlewis/

# Customization of `pkgdown` site

1. I changed the bootswatch theme to "journal."
2. I added a package logo. 
3. I changed the colors used for syntax highlighting in the code blocks.
4. I customized the footer to add a disclaimer. 
5. I added a link to my ORCID profile.
6. I customized the colors of the text throughout the site.
