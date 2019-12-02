syntax match typescriptFuncClassLine /\(\.\)\@<=\w*\((.\{-}\)\@=/ contains=typescriptFuncClassLine
syntax match typescriptFuncName /\(\.\)\@<=\w*\((.\{-}\)\@=/ contained

" Class
syntax match typescriptClassDefinitionLine /\(new\)\@<=\s*.*\((\)\@=/ contains=typescriptClassDefinition
syntax match typescriptClassDefinition /\(new\)\@<=\s*.*\((\)\@=/ contained
