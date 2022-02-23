function! MathAndLiquid()
    "" Define certain regions
    " Block math. Look for "$$[anything]$$"
    syn region math start=/\$\$/ end=/\$\$/
    syn region math_paren start=/\\\[/ end=/\\\]/
    " inline math. Look for "$[not $][anything]$"
    syn match math_block '\$[^$].\{-}\$'
    syn match math_block_paren '\\(.\{-}\\)'

    " Fenced code blocks, used in GitHub Flavored Markdown (GFM)
    syn region highlight_block start='```' end='```'

    "" Actually highlight those regions.
    hi link math Statement
    hi link math_paren Statement
    hi link highlight_block Function
    hi link math_block Function
    hi link math_block_paren Function
endfunction

" Call everytime we open a Markdown file
autocmd BufRead,BufNewFile,BufEnter *.md,*.markdown call MathAndLiquid()
