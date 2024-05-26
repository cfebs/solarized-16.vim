" Vim color numbers
" NR-16   NR-8    COLOR NAME ~
" 0	    0	    Black
" 1	    4	    DarkBlue
" 2	    2	    DarkGreen
" 3	    6	    DarkCyan
" 4	    1	    DarkRed
" 5	    5	    DarkMagenta
" 6	    3	    Brown, DarkYellow
" 7	    7	    LightGray, LightGrey, Gray, Grey
" 8	    0*	    DarkGray, DarkGrey
" 9	    4*	    Blue, LightBlue
" 10	    2*	    Green, LightGreen
" 11	    6*	    Cyan, LightCyan
" 12	    1*	    Red, LightRed
" 13	    5*	    Magenta, LightMagenta
" 14	    3*	    Yellow, LightYellow
" 15	    7*	    White
"
" Solarized spec
"
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      sRGB        HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen  240 #4e4e4e 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow 241 #585858 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    254 #d7d7af 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "solarized-16"

if has('nvim')
	"" @see https://github.com/neovim/neovim/issues/26378
	runtime colors/vim.lua
endif

if &background == 'light'
	hi! Normal cterm=NONE term=NONE ctermfg=11 ctermbg=15
	hi! Comment cterm=NONE term=NONE ctermfg=14 ctermbg=NONE
	hi! Constant cterm=NONE term=NONE ctermfg=6 ctermbg=NONE
	hi! Identifier cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! Statement cterm=NONE term=NONE ctermfg=2 ctermbg=NONE
	hi! PreProc cterm=NONE term=NONE ctermfg=9 ctermbg=NONE
	hi! Type cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! Special cterm=NONE term=NONE ctermfg=1 ctermbg=NONE
	hi! Underlined cterm=NONE term=NONE ctermfg=13 ctermbg=NONE
	hi! Ignore cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
	hi! Error cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=NONE
	hi! Todo cterm=NONE,bold term=NONE,bold ctermfg=5 ctermbg=NONE
	hi! StatusLine cterm=NONE term=NONE ctermfg=10 ctermbg=7 cterm=NONE,reverse term=NONE,reverse
	hi! StatusLineNC cterm=NONE term=NONE ctermfg=12 ctermbg=7 cterm=NONE,reverse term=NONE,reverse
	hi! Visual cterm=NONE term=NONE ctermfg=14 ctermbg=15 cterm=NONE,reverse term=NONE,reverse
	hi! Directory cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! ErrorMsg cterm=NONE,reverse term=NONE,reverse ctermfg=1 ctermbg=NONE
	hi! IncSearch cterm=NONE,standout term=NONE,standout ctermfg=9 ctermbg=NONE
	hi! Search cterm=NONE,reverse term=NONE,reverse ctermfg=3 ctermbg=NONE
	hi! MoreMsg cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! ModeMsg cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! LineNr cterm=NONE term=NONE ctermfg=14 ctermbg=7
	hi! Question cterm=NONE,bold term=NONE,bold ctermfg=6 ctermbg=NONE
	hi! Title cterm=NONE,bold term=NONE,bold ctermfg=9 ctermbg=NONE
	hi! VisualNOS cterm=NONE,standout term=NONE,standout ctermfg=NONE ctermbg=7 cterm=NONE,reverse term=NONE,reverse
	hi! WarningMsg cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=NONE
	hi! WildMenu cterm=NONE term=NONE ctermfg=0 ctermbg=7 cterm=NONE,reverse term=NONE,reverse
	hi! Folded cterm=NONE,underline,bold term=NONE,underline,bold ctermfg=11 ctermbg=7
	hi! FoldColumn cterm=NONE term=NONE ctermfg=11 ctermbg=7
	hi! DiffAdd cterm=NONE term=NONE ctermfg=2 ctermbg=7
	hi! DiffChange cterm=NONE term=NONE ctermfg=3 ctermbg=7
	hi! DiffDelete cterm=NONE term=NONE ctermfg=1 ctermbg=7
	hi! DiffText cterm=NONE term=NONE ctermfg=4 ctermbg=7
	hi! SignColumn cterm=NONE term=NONE ctermfg=11
	hi! Conceal cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! SpellBad cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! SpellCap cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! SpellRare cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! SpellLocal cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! Pmenu cterm=NONE term=NONE ctermfg=11 ctermbg=7 cterm=NONE,reverse term=NONE,reverse
	hi! PmenuSel cterm=NONE term=NONE ctermfg=14 ctermbg=0 cterm=NONE,reverse term=NONE,reverse
	hi! PmenuSbar cterm=NONE term=NONE ctermfg=0 ctermbg=11 cterm=NONE,reverse term=NONE,reverse
	hi! PmenuThumb cterm=NONE term=NONE ctermfg=11 ctermbg=15 cterm=NONE,reverse term=NONE,reverse
	hi! TabLine cterm=NONE,underline term=NONE,underline ctermfg=11 ctermbg=7
	hi! TabLineFill cterm=NONE,underline term=NONE,underline ctermfg=11 ctermbg=7
	hi! TabLineSel cterm=NONE,underline term=NONE,underline ctermfg=14 ctermbg=0 cterm=NONE,reverse,underline term=NONE,reverse,underline
	hi! CursorColumn cterm=NONE term=NONE ctermfg=NONE ctermbg=7
	hi! CursorLine cterm=NONE term=NONE ctermfg=NONE ctermbg=7
	hi! ColorColumn cterm=NONE term=NONE ctermfg=NONE ctermbg=7
	hi! Cursor cterm=NONE term=NONE ctermfg=15 ctermbg=11
	hi! link lCursor Cursor
	hi! MatchParen cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=14
	hi! link vimVar Identifier
	hi! link vimFunc Function
	hi! link vimUserFunc Function
	hi! link helpSpecial Special
	hi! link vimSet Normal
	hi! link vimSetEqual Normal
	hi! vimCommentString cterm=NONE term=NONE ctermfg=13 ctermbg=NONE
	hi! vimCommand cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! vimCmdSep cterm=NONE,bold term=NONE,bold ctermfg=4 ctermbg=NONE
	hi! helpExample cterm=NONE term=NONE ctermfg=10 ctermbg=NONE
	hi! helpOption cterm=NONE term=NONE ctermfg=6 ctermbg=NONE
	hi! helpNote cterm=NONE term=NONE ctermfg=5 ctermbg=NONE
	hi! helpVim cterm=NONE term=NONE ctermfg=5 ctermbg=NONE
	hi! helpHyperTextJump cterm=NONE,underline term=NONE,underline ctermfg=4 ctermbg=NONE
	hi! helpHyperTextEntry cterm=NONE term=NONE ctermfg=2 ctermbg=NONE
	hi! vimIsCommand cterm=NONE term=NONE ctermfg=12 ctermbg=NONE
	hi! vimSynMtchOpt cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! vimSynType cterm=NONE term=NONE ctermfg=6 ctermbg=NONE
	hi! vimHiLink cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! vimHiGroup cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! vimGroup cterm=NONE,underline,bold term=NONE,underline,bold ctermfg=4 ctermbg=NONE
	hi! link diffAdded Statement
	hi! link diffLine Identifier
	hi! gitcommitComment cterm=NONE term=NONE ctermfg=14 ctermbg=NONE
	hi! link gitcommitUntracked gitcommitComment
	hi! link gitcommitDiscarded gitcommitComment
	hi! link gitcommitSelected  gitcommitComment
	hi! gitcommitUnmerged cterm=NONE,bold term=NONE,bold ctermfg=2 ctermbg=NONE
	hi! gitcommitOnBranch cterm=NONE,bold term=NONE,bold ctermfg=14 ctermbg=NONE
	hi! gitcommitBranch cterm=NONE,bold term=NONE,bold ctermfg=5 ctermbg=NONE
	hi! link gitcommitNoBranch gitcommitBranch
	hi! gitcommitDiscardedType cterm=NONE term=NONE ctermfg=1 ctermbg=NONE
	hi! gitcommitSelectedType cterm=NONE term=NONE ctermfg=2 ctermbg=NONE
	hi! gitcommitHeader cterm=NONE term=NONE ctermfg=14 ctermbg=NONE
	hi! gitcommitUntrackedFile cterm=NONE,bold term=NONE,bold ctermfg=6 ctermbg=NONE
	hi! gitcommitDiscardedFile cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=NONE
	hi! gitcommitSelectedFile cterm=NONE,bold term=NONE,bold ctermfg=2 ctermbg=NONE
	hi! gitcommitUnmergedFile cterm=NONE,bold term=NONE,bold ctermfg=3 ctermbg=NONE
	hi! gitcommitFile cterm=NONE,bold term=NONE,bold ctermfg=11 ctermbg=NONE
	hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
	hi! link gitcommitSelectedArrow  gitcommitSelectedFile
	hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile
	hi! htmlTag cterm=NONE term=NONE ctermfg=14 ctermbg=NONE
	hi! htmlEndTag cterm=NONE term=NONE ctermfg=14 ctermbg=NONE
	hi! htmlTagN cterm=NONE,bold term=NONE,bold ctermfg=10 ctermbg=NONE
	hi! htmlTagName cterm=NONE,bold term=NONE,bold ctermfg=4 ctermbg=NONE
	hi! htmlSpecialTagName cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! htmlArg cterm=NONE term=NONE ctermfg=12 ctermbg=NONE
	hi! javaScript cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! perlHereDoc ctermfg=10 ctermbg=15 cterm=NONE term=NONE
	hi! perlVarPlain ctermfg=3 ctermbg=15 cterm=NONE term=NONE
	hi! perlStatementFileDesc ctermfg=6 ctermbg=15 cterm=NONE term=NONE
	hi! texStatement ctermfg=6 ctermbg=15 cterm=NONE term=NONE
	hi! texMathZoneX ctermfg=3 ctermbg=15 cterm=NONE term=NONE
	hi! texMathMatcher ctermfg=3 ctermbg=15 cterm=NONE term=NONE
	hi! texMathMatcher ctermfg=3 ctermbg=15 cterm=NONE term=NONE
	hi! texRefLabel ctermfg=3 ctermbg=15 cterm=NONE term=NONE
	hi! rubyDefine ctermfg=10 ctermbg=15 cterm=NONE,bold term=NONE,bold
	hi! cPreCondit ctermfg=9 ctermbg=NONE cterm=NONE term=NONE
	hi! VarId ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! ConId ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! hsImport ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! hsString ctermfg=12 ctermbg=NONE cterm=NONE term=NONE
	hi! hsStructure ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hs_hlFunctionName ctermfg=4 ctermbg=NONE
	hi! hsStatement ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsImportLabel ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hs_OpFunctionName ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! hs_DeclareFunction ctermfg=9 ctermbg=NONE cterm=NONE term=NONE
	hi! hsVarSym ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsType ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! hsTypedef ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsModuleName ctermfg=2 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! hsModuleStartLabel ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! link hsImportParams      Delimiter
	hi! link hsDelimTypeExport   Delimiter
	hi! link hsModuleStartLabel  hsStructure
	hi! link hsModuleWhereLabel  hsModuleStartLabel
	hi! hsNiceOperator ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsniceoperator ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTitleBlock ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTitleBlockTitle ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocTitleComment ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocComment ctermfg=14 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocVerbatimBlock ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! link pandocVerbatimBlockDeep         pandocVerbatimBlock
	hi! link pandocCodeBlock                 pandocVerbatimBlock
	hi! link pandocCodeBlockDelim            pandocVerbatimBlock
	hi! pandocBlockQuote ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader1 ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader2 ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader3 ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader4 ctermfg=1 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader5 ctermfg=11 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader6 ctermfg=14 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocListMarker ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocListReference ctermfg=5 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocDefinitionBlock ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocDefinitionTerm ctermfg=13 ctermbg=NONE cterm=NONE,standout term=NONE,standout
	hi! pandocDefinitionIndctr ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeoutDefinition ctermfg=13 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInlineDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSuperscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSubscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTableStructure ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! link pandocTableStructureTop             pandocTableStructre
	hi! link pandocTableStructureEnd             pandocTableStructre
	hi! pandocTableZebraLight ctermfg=4 ctermbg=15 cterm=NONE term=NONE
	hi! pandocTableZebraDark ctermfg=4 ctermbg=7 cterm=NONE term=NONE
	hi! pandocEmphasisTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasisTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeoutTable ctermfg=4 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInlineTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSuperscriptTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSubscriptTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocHeadingMarker ctermfg=3 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEmphasisHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasisHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeoutHeading ctermfg=9 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInlineHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocSuperscriptHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocSubscriptHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocLinkDelim ctermfg=14 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocLinkLabel ctermfg=4 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkText ctermfg=4 ctermbg=NONE cterm=NONE,underline,bold term=NONE,underline,bold
	hi! pandocLinkURL ctermfg=12 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkTitle ctermfg=12 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkTitleDelim ctermfg=14 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkDefinition ctermfg=6 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkDefinitionID ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocImageCaption ctermfg=13 ctermbg=NONE cterm=NONE,underline,bold term=NONE,underline,bold
	hi! pandocFootnoteLink ctermfg=2 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocFootnoteDefLink ctermfg=2 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocFootnoteInline ctermfg=2 ctermbg=NONE cterm=NONE,underline,bold term=NONE,underline,bold
	hi! pandocFootnote ctermfg=2 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocCitationDelim ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocCitation ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocCitationID ctermfg=5 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocStyleDelim ctermfg=14 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasis ctermfg=11 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasisNested ctermfg=11 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasis ctermfg=11 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNested ctermfg=11 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasis ctermfg=11 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeout ctermfg=14 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInline ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSuperscript ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSubscript ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocRule ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocRuleLine ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEscapePair ctermfg=1 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocNonBreakingSpace ctermfg=1 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! link pandocEscapedCharacter          pandocEscapePair
	hi! link pandocLineBreak                 pandocEscapePair
	hi! pandocMetadataDelim ctermfg=14 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocMetadata ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocMetadataKey ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocMetadata ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! link pandocMetadataTitle             pandocMetadatarecording @t
else
	hi! Normal cterm=NONE term=NONE ctermfg=12 ctermbg=8
	hi! Comment cterm=NONE term=NONE ctermfg=10 ctermbg=NONE
	hi! Constant cterm=NONE term=NONE ctermfg=6 ctermbg=NONE
	hi! Identifier cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! Statement cterm=NONE term=NONE ctermfg=2 ctermbg=NONE
	hi! PreProc cterm=NONE term=NONE ctermfg=9 ctermbg=NONE
	hi! Type cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! Special cterm=NONE term=NONE ctermfg=1 ctermbg=NONE
	hi! Underlined cterm=NONE term=NONE ctermfg=13 ctermbg=NONE
	hi! Ignore cterm=NONE term=NONE ctermfg=NONE ctermbg=NONE
	hi! Error cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=NONE
	hi! Todo cterm=NONE,bold term=NONE,bold ctermfg=5 ctermbg=NONE
	hi! StatusLine cterm=NONE term=NONE ctermfg=14 ctermbg=0 cterm=NONE,reverse term=NONE,reverse
	hi! StatusLineNC cterm=NONE term=NONE ctermfg=11 ctermbg=0 cterm=NONE,reverse term=NONE,reverse
	hi! Visual cterm=NONE term=NONE ctermfg=10 ctermbg=8 cterm=NONE,reverse term=NONE,reverse
	hi! Directory cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! ErrorMsg cterm=NONE,reverse term=NONE,reverse ctermfg=1 ctermbg=NONE
	hi! IncSearch cterm=NONE,standout term=NONE,standout ctermfg=9 ctermbg=NONE
	hi! Search cterm=NONE,reverse term=NONE,reverse ctermfg=3 ctermbg=NONE
	hi! MoreMsg cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! ModeMsg cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! LineNr cterm=NONE term=NONE ctermfg=10 ctermbg=0
	hi! Question cterm=NONE,bold term=NONE,bold ctermfg=6 ctermbg=NONE
	hi! Title cterm=NONE,bold term=NONE,bold ctermfg=9 ctermbg=NONE
	hi! VisualNOS cterm=NONE,standout term=NONE,standout ctermfg=NONE ctermbg=0 cterm=NONE,reverse term=NONE,reverse
	hi! WarningMsg cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=NONE
	hi! WildMenu cterm=NONE term=NONE ctermfg=7 ctermbg=0 cterm=NONE,reverse term=NONE,reverse
	hi! Folded cterm=NONE,underline,bold term=NONE,underline,bold ctermfg=12 ctermbg=0
	hi! FoldColumn cterm=NONE term=NONE ctermfg=12 ctermbg=0
	hi! DiffAdd cterm=NONE term=NONE ctermfg=2 ctermbg=0
	hi! DiffChange cterm=NONE term=NONE ctermfg=3 ctermbg=0
	hi! DiffDelete cterm=NONE term=NONE ctermfg=1 ctermbg=0
	hi! DiffText cterm=NONE term=NONE ctermfg=4 ctermbg=0
	hi! SignColumn cterm=NONE term=NONE ctermfg=12
	hi! Conceal cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! SpellBad cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! SpellCap cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! SpellRare cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! SpellLocal cterm=NONE,undercurl term=NONE,undercurl ctermfg=NONE ctermbg=NONE
	hi! Pmenu cterm=NONE term=NONE ctermfg=12 ctermbg=0 cterm=NONE,reverse term=NONE,reverse
	hi! PmenuSel cterm=NONE term=NONE ctermfg=10 ctermbg=7 cterm=NONE,reverse term=NONE,reverse
	hi! PmenuSbar cterm=NONE term=NONE ctermfg=7 ctermbg=12 cterm=NONE,reverse term=NONE,reverse
	hi! PmenuThumb cterm=NONE term=NONE ctermfg=12 ctermbg=8 cterm=NONE,reverse term=NONE,reverse
	hi! TabLine cterm=NONE,underline term=NONE,underline ctermfg=12 ctermbg=0
	hi! TabLineFill cterm=NONE,underline term=NONE,underline ctermfg=12 ctermbg=0
	hi! TabLineSel cterm=NONE,underline term=NONE,underline ctermfg=10 ctermbg=7 cterm=NONE,reverse,underline term=NONE,reverse,underline
	hi! CursorColumn cterm=NONE term=NONE ctermfg=NONE ctermbg=0
	hi! CursorLine cterm=NONE term=NONE ctermfg=NONE ctermbg=0
	hi! ColorColumn cterm=NONE term=NONE ctermfg=NONE ctermbg=0
	hi! Cursor cterm=NONE term=NONE ctermfg=8 ctermbg=12
	hi! link lCursor Cursor
	hi! MatchParen cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=10
	hi! link vimVar Identifier
	hi! link vimFunc Function
	hi! link vimUserFunc Function
	hi! link helpSpecial Special
	hi! link vimSet Normal
	hi! link vimSetEqual Normal
	hi! vimCommentString cterm=NONE term=NONE ctermfg=13 ctermbg=NONE
	hi! vimCommand cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! vimCmdSep cterm=NONE,bold term=NONE,bold ctermfg=4 ctermbg=NONE
	hi! helpExample cterm=NONE term=NONE ctermfg=14 ctermbg=NONE
	hi! helpOption cterm=NONE term=NONE ctermfg=6 ctermbg=NONE
	hi! helpNote cterm=NONE term=NONE ctermfg=5 ctermbg=NONE
	hi! helpVim cterm=NONE term=NONE ctermfg=5 ctermbg=NONE
	hi! helpHyperTextJump cterm=NONE,underline term=NONE,underline ctermfg=4 ctermbg=NONE
	hi! helpHyperTextEntry cterm=NONE term=NONE ctermfg=2 ctermbg=NONE
	hi! vimIsCommand cterm=NONE term=NONE ctermfg=11 ctermbg=NONE
	hi! vimSynMtchOpt cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! vimSynType cterm=NONE term=NONE ctermfg=6 ctermbg=NONE
	hi! vimHiLink cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! vimHiGroup cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! vimGroup cterm=NONE,underline,bold term=NONE,underline,bold ctermfg=4 ctermbg=NONE
	hi! link diffAdded Statement
	hi! link diffLine Identifier
	hi! gitcommitComment cterm=NONE term=NONE ctermfg=10 ctermbg=NONE
	hi! link gitcommitUntracked gitcommitComment
	hi! link gitcommitDiscarded gitcommitComment
	hi! link gitcommitSelected  gitcommitComment
	hi! gitcommitUnmerged cterm=NONE,bold term=NONE,bold ctermfg=2 ctermbg=NONE
	hi! gitcommitOnBranch cterm=NONE,bold term=NONE,bold ctermfg=10 ctermbg=NONE
	hi! gitcommitBranch cterm=NONE,bold term=NONE,bold ctermfg=5 ctermbg=NONE
	hi! link gitcommitNoBranch gitcommitBranch
	hi! gitcommitDiscardedType cterm=NONE term=NONE ctermfg=1 ctermbg=NONE
	hi! gitcommitSelectedType cterm=NONE term=NONE ctermfg=2 ctermbg=NONE
	hi! gitcommitHeader cterm=NONE term=NONE ctermfg=10 ctermbg=NONE
	hi! gitcommitUntrackedFile cterm=NONE,bold term=NONE,bold ctermfg=6 ctermbg=NONE
	hi! gitcommitDiscardedFile cterm=NONE,bold term=NONE,bold ctermfg=1 ctermbg=NONE
	hi! gitcommitSelectedFile cterm=NONE,bold term=NONE,bold ctermfg=2 ctermbg=NONE
	hi! gitcommitUnmergedFile cterm=NONE,bold term=NONE,bold ctermfg=3 ctermbg=NONE
	hi! gitcommitFile cterm=NONE,bold term=NONE,bold ctermfg=12 ctermbg=NONE
	hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
	hi! link gitcommitSelectedArrow  gitcommitSelectedFile
	hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile
	hi! htmlTag cterm=NONE term=NONE ctermfg=10 ctermbg=NONE
	hi! htmlEndTag cterm=NONE term=NONE ctermfg=10 ctermbg=NONE
	hi! htmlTagN cterm=NONE,bold term=NONE,bold ctermfg=14 ctermbg=NONE
	hi! htmlTagName cterm=NONE,bold term=NONE,bold ctermfg=4 ctermbg=NONE
	hi! htmlSpecialTagName cterm=NONE term=NONE ctermfg=4 ctermbg=NONE
	hi! htmlArg cterm=NONE term=NONE ctermfg=11 ctermbg=NONE
	hi! javaScript cterm=NONE term=NONE ctermfg=3 ctermbg=NONE
	hi! perlHereDoc ctermfg=14 ctermbg=8 cterm=NONE term=NONE
	hi! perlVarPlain ctermfg=3 ctermbg=8 cterm=NONE term=NONE
	hi! perlStatementFileDesc ctermfg=6 ctermbg=8 cterm=NONE term=NONE
	hi! texStatement ctermfg=6 ctermbg=8 cterm=NONE term=NONE
	hi! texMathZoneX ctermfg=3 ctermbg=8 cterm=NONE term=NONE
	hi! texMathMatcher ctermfg=3 ctermbg=8 cterm=NONE term=NONE
	hi! texMathMatcher ctermfg=3 ctermbg=8 cterm=NONE term=NONE
	hi! texRefLabel ctermfg=3 ctermbg=8 cterm=NONE term=NONE
	hi! rubyDefine ctermfg=14 ctermbg=8 cterm=NONE,bold term=NONE,bold
	hi! cPreCondit ctermfg=9 ctermbg=NONE cterm=NONE term=NONE
	hi! VarId ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! ConId ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! hsImport ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! hsString ctermfg=11 ctermbg=NONE cterm=NONE term=NONE
	hi! hsStructure ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hs_hlFunctionName ctermfg=4 ctermbg=NONE
	hi! hsStatement ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsImportLabel ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hs_OpFunctionName ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! hs_DeclareFunction ctermfg=9 ctermbg=NONE cterm=NONE term=NONE
	hi! hsVarSym ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsType ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! hsTypedef ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsModuleName ctermfg=2 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! hsModuleStartLabel ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! link hsImportParams      Delimiter
	hi! link hsDelimTypeExport   Delimiter
	hi! link hsModuleStartLabel  hsStructure
	hi! link hsModuleWhereLabel  hsModuleStartLabel
	hi! hsNiceOperator ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! hsniceoperator ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTitleBlock ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTitleBlockTitle ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocTitleComment ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocComment ctermfg=10 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocVerbatimBlock ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! link pandocVerbatimBlockDeep         pandocVerbatimBlock
	hi! link pandocCodeBlock                 pandocVerbatimBlock
	hi! link pandocCodeBlockDelim            pandocVerbatimBlock
	hi! pandocBlockQuote ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader1 ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader2 ctermfg=6 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader3 ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader4 ctermfg=1 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader5 ctermfg=12 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocBlockQuoteLeader6 ctermfg=10 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocListMarker ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocListReference ctermfg=5 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocDefinitionBlock ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocDefinitionTerm ctermfg=13 ctermbg=NONE cterm=NONE,standout term=NONE,standout
	hi! pandocDefinitionIndctr ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNestedDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasisDefinition ctermfg=13 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeoutDefinition ctermfg=13 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInlineDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSuperscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSubscriptDefinition ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocTableStructure ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! link pandocTableStructureTop             pandocTableStructre
	hi! link pandocTableStructureEnd             pandocTableStructre
	hi! pandocTableZebraLight ctermfg=4 ctermbg=8 cterm=NONE term=NONE
	hi! pandocTableZebraDark ctermfg=4 ctermbg=0 cterm=NONE term=NONE
	hi! pandocEmphasisTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNestedTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasisTable ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeoutTable ctermfg=4 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInlineTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSuperscriptTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSubscriptTable ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocHeadingMarker ctermfg=3 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEmphasisHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNestedHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasisHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeoutHeading ctermfg=9 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInlineHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocSuperscriptHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocSubscriptHeading ctermfg=9 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocLinkDelim ctermfg=10 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocLinkLabel ctermfg=4 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkText ctermfg=4 ctermbg=NONE cterm=NONE,underline,bold term=NONE,underline,bold
	hi! pandocLinkURL ctermfg=11 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkTitle ctermfg=11 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkTitleDelim ctermfg=10 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkDefinition ctermfg=6 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocLinkDefinitionID ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocImageCaption ctermfg=13 ctermbg=NONE cterm=NONE,underline,bold term=NONE,underline,bold
	hi! pandocFootnoteLink ctermfg=2 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocFootnoteDefLink ctermfg=2 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocFootnoteInline ctermfg=2 ctermbg=NONE cterm=NONE,underline,bold term=NONE,underline,bold
	hi! pandocFootnote ctermfg=2 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocCitationDelim ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocCitation ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocCitationID ctermfg=5 ctermbg=NONE cterm=NONE,underline term=NONE,underline
	hi! pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocStyleDelim ctermfg=10 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasis ctermfg=12 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocEmphasisNested ctermfg=12 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasis ctermfg=12 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisNested ctermfg=12 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrongEmphasisEmphasis ctermfg=12 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocStrikeout ctermfg=10 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! pandocVerbatimInline ctermfg=3 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSuperscript ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocSubscript ctermfg=13 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocRule ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocRuleLine ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocEscapePair ctermfg=1 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! pandocCitationRef ctermfg=5 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocNonBreakingSpace ctermfg=1 ctermbg=NONE cterm=NONE,reverse term=NONE,reverse
	hi! link pandocEscapedCharacter          pandocEscapePair
	hi! link pandocLineBreak                 pandocEscapePair
	hi! pandocMetadataDelim ctermfg=10 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocMetadata ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocMetadataKey ctermfg=4 ctermbg=NONE cterm=NONE term=NONE
	hi! pandocMetadata ctermfg=4 ctermbg=NONE cterm=NONE,bold term=NONE,bold
	hi! link pandocMetadataTitle             pandocMetadata
end
