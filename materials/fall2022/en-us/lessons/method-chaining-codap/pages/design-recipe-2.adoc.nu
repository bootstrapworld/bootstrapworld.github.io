= Design Recipe 2

@design-codap-recipe{"filter-is-old"
  "Create and save a Transformer that produces a copy of the animals table with only  animals that are more than 12 years old."
#:headless? #t
#:domain-list '("Row")
#:transformer-type "filter"
#:range "Boolean"
#:num-input-examples 2
#:num-output-examples 2
#:input-examples '(("name" "age (years)") ("Sasha" "1") ("Felix" "16"))
#:output-examples '(("name" "age (years)") ("Felix" "16"))
#:show-input-examples '(#f #f)
#:show-output-examples '(#f)
#:purpose "Consumes an animal, and computes whether its age is > 12"
#:formula-expression "Age > 12"
#:show-transformer-contract? #f
#:show-domains? #f
#:show-purpose? #f
#:show-range? #f
#:show-formula-expression? #f
}


@span{.sectionbreak}{}


@design-codap-recipe{"build-s-names"
  "Create and save a Transformer which returns true in a _new column_ if an animal’s name contains the letter `s`."
#:headless? #t
#:domain-list '("Row")
#:range "Boolean"
#:num-input-examples 2
#:num-output-examples 2
#:input-examples '(("name" "species") ("Sasha" "cat") ("Felix" "cat"))
#:output-examples '(("name" "species" "S name") ("Sasha" "cat" "true") ("Felix" "cat" "false"))
#:show-input-examples '(#f #f)
#:show-output-examples '(#f #f)
#:purpose "Consumes an animal, and computes whether its name contains an `s`"
#:formula-expression "includes(name,\"s\")"
#:show-transformer-contract? #f
#:show-domains? #f
#:show-purpose? #f
#:show-range? #f
#:show-formula-expression? #f
}
