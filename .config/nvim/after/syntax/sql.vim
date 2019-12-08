syntax keyword sqlModifier ISNULL CAST ROUND MIN
syntax keyword sqlKeyword APPLY GO SELECT
syntax match sqlAsIdentifier +\(AS\)\@<=\s\+\w\+\(\w\)\@<=+
syntax match sqlVariable +@\w\++
