"=============================================================================
" FILE: neocomplcache.vim
" AUTHOR:  Shougo Matsushita <Shougo.Matsu@gmail.com>
" Last Modified: 25 Sep 2009
" Usage: Just source this file.
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Version: 3.00, for Vim 7.0
"=============================================================================

if exists('g:loaded_neocomplcache') || v:version < 700
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 NeoComplCacheEnable call neocomplcache#enable()
command! -nargs=0 NeoComplCacheToggle call neocomplcache#toggle()

" Global options definition."{{{
if !exists('g:NeoComplCache_MaxList')
    let g:NeoComplCache_MaxList = 100
endif
if !exists('g:NeoComplCache_MaxKeywordWidth')
    let g:NeoComplCache_MaxKeywordWidth = 50
endif
if !exists('g:NeoComplCache_MaxFilenameWidth')
    let g:NeoComplCache_MaxFilenameWidth = 15
endif
if !exists('g:NeoComplCache_PartialMatch')
    let g:NeoComplCache_PartialMatch = 1
endif
if !exists('g:NeoComplCache_KeywordCompletionStartLength')
    let g:NeoComplCache_KeywordCompletionStartLength = 2
endif
if !exists('g:NeoComplCache_ManualCompletionStartLength')
    let g:NeoComplCache_ManualCompletionStartLength = 2
endif
if !exists('g:NeoComplCache_PartialCompletionStartLength')
    let g:NeoComplCache_PartialCompletionStartLength = 4
endif
if !exists('g:NeoComplCache_MinKeywordLength')
    let g:NeoComplCache_MinKeywordLength = 4
endif
if !exists('g:NeoComplCache_IgnoreCase')
    let g:NeoComplCache_IgnoreCase = 1
endif
if !exists('g:NeoComplCache_SmartCase')
    let g:NeoComplCache_SmartCase = 0
endif
if !exists('g:NeoComplCache_AlphabeticalOrder')
    let g:NeoComplCache_AlphabeticalOrder = 0
endif
if !exists('g:NeoComplCache_CacheLineCount')
    let g:NeoComplCache_CacheLineCount = 70
endif
if !exists('g:NeoComplCache_DisableAutoComplete')
    let g:NeoComplCache_DisableAutoComplete = 0
endif
if !exists('g:NeoComplCache_EnableWildCard')
    let g:NeoComplCache_EnableWildCard = 1
endif
if !exists('g:NeoComplCache_EnableQuickMatch')
    let g:NeoComplCache_EnableQuickMatch = 1
endif
if !exists('g:NeoComplCache_CalcRankRandomize')
    let g:NeoComplCache_CalcRankRandomize = has('reltime')
endif
if !exists('g:NeoComplCache_QuickMatchMaxLists')
    let g:NeoComplCache_QuickMatchMaxLists = 100
endif
if !exists('g:NeoComplCache_EnableSkipCompletion')
    let g:NeoComplCache_EnableSkipCompletion = has('reltime')
endif
if !exists('g:NeoComplCache_SkipCompletionTime')
    let g:NeoComplCache_SkipCompletionTime = '0.2'
endif
if !exists('g:NeoComplCache_SkipInputTime')
    let g:NeoComplCache_SkipInputTime = '0.0'
endif
if !exists('g:NeoComplCache_PreviousKeywordCompletion')
    let g:NeoComplCache_PreviousKeywordCompletion = 1
endif
if !exists('g:NeoComplCache_TagsAutoUpdate')
    let g:NeoComplCache_TagsAutoUpdate = 0
endif
if !exists('g:NeoComplCache_TryFilenameCompletion')
    let g:NeoComplCache_TryFilenameCompletion = 1
endif
if !exists('g:NeoComplCache_EnableInfo')
    let g:NeoComplCache_EnableInfo = 0
endif
if !exists('g:NeoComplCache_CachingRandomize')
    let g:NeoComplCache_CachingRandomize = has('reltime')
endif
if !exists('g:NeoComplCache_EnableCamelCaseCompletion')
    let g:NeoComplCache_EnableCamelCaseCompletion = 0
endif
if !exists('g:NeoComplCache_EnableUnderbarCompletion')
    let g:NeoComplCache_EnableUnderbarCompletion = 0
endif
if !exists('g:NeoComplCache_CachingLimitFileSize')
    let g:NeoComplCache_CachingLimitFileSize = 1000000
endif
if !exists('g:NeoComplCache_CachingDisablePattern')
    let g:NeoComplCache_CachingDisablePattern = ''
endif
if !exists('g:NeoComplCache_PluginCompletionLength')
    let g:NeoComplCache_PluginCompletionLength = {}
endif
if !exists('g:NeoComplCache_CachingPercentInStatusline')
    let g:NeoComplCache_CachingPercentInStatusline = 0
endif
if !exists('g:NeoComplCache_TemporaryDir')
    let g:NeoComplCache_TemporaryDir = $HOME . '/.neocon'

    if !isdirectory(g:NeoComplCache_TemporaryDir)
         call mkdir(g:NeoComplCache_TemporaryDir, 'p')
    endif
endif
if exists('g:NeoComplCache_EnableAtStartup') && g:NeoComplCache_EnableAtStartup
    " Enable startup.
    call neocomplcache#enable()
endif"}}}

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_neocomplcache = 1

" vim: foldmethod=marker
