syntax keyword sqlModifier ISNULL CAST ROUND MIN
syntax keyword sqlKeyword APPLY GO
syntax match sqlAsIdentifier +\(AS\)\@<=\s\+\w\+\(\w\)\@<=+
syntax match sqlVariable +@\w\++
