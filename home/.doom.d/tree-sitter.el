(custom-set-faces

`(tree-sitter-hl-face:number ((t(:inherit highlight-numbers-number))))

`(tree-sitter-hl-face:attribute ((t(:inherit font-lock-keyword-face))))

;;const
`(tree-sitter-hl-face:constant.builtin ((t(:inherit font-lock-builtin-face))))
`(tree-sitter-hl-face:constant ((t(:inherit font-lock-constant-face))))

;; `(tree-sitter-hl-face:label ))))
`(tree-sitter-hl-face:operator ((t(:inherit default))))

`(tree-sitter-hl-face:variable.parameter ((t(:inherit font-lock-variable-name-face))))
`(tree-sitter-hl-face:variable.special ((t(:inherit font-lock-variable-name-face))))

`(tree-sitter-hl-face:type ((t(:inherit font-lock-type-face))))
`(tree-sitter-hl-face:type.builtin ((t(:inherit font-lock-type-face))))
`(tree-sitter-hl-face:type.super ((t(:inherit font-lock-type-face))))
`(tree-sitter-hl-face:type.argument ((t(:inherit font-lock-type-face))))
`(tree-sitter-hl-face:type.parameter ((t(:inherit font-lock-type-face))))

`(tree-sitter-hl-face:string ((t(:inherit font-lock-string-face))))
`(tree-sitter-hl-face:string.special ((t(:inherit font-lock-string-face))))

`(tree-sitter-hl-face:property ((t(:inherit font-lock-variable-name-face))))

`(tree-sitter-hl-face:keyword ((t(:inherit font-lock-keyword-face))))

`(tree-sitter-hl-face:tag ((t(:inherit font-lock-string-face))))

`(tree-sitter-hl-face:constructor ((t(:inherit font-lock-type-face :weight normal))))
`(tree-sitter-hl-face:method ((t(:inherit font-lock-function-name-face :weight normal))))
`(tree-sitter-hl-face:method.call ((t(:inherit font-lock-function-name-face :weight normal))))
`(tree-sitter-hl-face:function ((t(:inherit font-lock-function-name-face :weight normal))))
`(tree-sitter-hl-face:function.builtin ((t(:inherit font-lock-function-name-face :weight normal))))
`(tree-sitter-hl-face:function.call ((t(:inherit font-lock-function-name-face :weight normal))))
`(tree-sitter-hl-face:function.macro ((t(:inherit font-lock-function-name-face :weight normal))))
`(tree-sitter-hl-face:function.special ((t(:inherit font-lock-function-name-face :weight normal))))
)

(provide 'tree-sitter)
