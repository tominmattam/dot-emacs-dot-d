;;; haskell-unicode-input-method.el --- Haskell Unicode helper functions  -*- coding: utf-8; lexical-binding: t -*-

;; Copyright (C) 2010-2011  Roel van Dijk

;; Author: Roel van Dijk <vandijk.roel@gmail.com>

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'quail)

;;;###autoload
(defun haskell-unicode-input-method-enable ()
  "Set input method `haskell-unicode'."
  (interactive)
  (set-input-method "haskell-unicode"))

;;;###autoload
(define-obsolete-function-alias 'turn-on-haskell-unicode-input-method 'haskell-unicode-input-method-enable "2020-04")

(quail-define-package
 "haskell-unicode" ;; name
 "UTF-8"           ;; language
 "\\"              ;; title
 t                 ;; guidance
 "Haskell Unicode input method.
Designed to be used with the Haskell UnicodeSyntax language
extension in combination with the x-unicode-symbols set of
packages (base-unicode-symbols and containers-unicode-symbols).
"                  ;; docstring
 nil              ;; translation-keys
 nil              ;; forget-last-selection
 nil              ;; deterministic
 nil              ;; kbd-translate
 nil              ;; show-layout
 nil              ;; create-decode-map
 nil              ;; maximum-shortest
 nil              ;; overlay-plist
 nil              ;; update-translation-function
 nil              ;; conversion-keys
 t                ;; simple
 )

(quail-define-rules
 ;; Greek letters
 ("alpha "           ["??"])
 ("Alpha "           ["??"])
 ("beta "            ["??"])
 ("Beta "            ["??"])
 ("gamma "           ["??"])
 ("Gamma "           ["??"])
 ("delta "           ["??"])
 ("Delta "           ["??"])
 ("epsilon "         ["??"])
 ("Epsilon "         ["??"])
 ("zeta "            ["??"])
 ("Zeta "            ["??"])
 ("eta "             ["??"])
 ("Eta "             ["??"])
 ("theta "           ["??"])
 ("Theta "           ["??"])
 ("iota "            ["??"])
 ("Iota "            ["??"])
 ("kappa "           ["??"])
 ("Kappa "           ["??"])
 ("lambda "          ["??"])
 ("Lambda "          ["??"])
 ("lamda "           ["??"])
 ("Lamda "           ["??"])
 ("mu "              ["??"])
 ("Mu "              ["??"])
 ("nu "              ["??"])
 ("Nu "              ["??"])
 ("xi "              ["??"])
 ("Xi "              ["??"])
 ("omicron "         ["??"])
 ("Omicron "         ["??"])
 ("pi "              ["??"])
 ("Pi "              ["??"])
 ("rho "             ["??"])
 ("Rho "             ["??"])
 ("sigma "           ["??"])
 ("Sigma "           ["??"])
 ("tau "             ["??"])
 ("Tau "             ["??"])
 ("upsilon "         ["??"])
 ("Upsilon "         ["??"])
 ("phi "             ["??"])
 ("Phi "             ["??"])
 ("chi "             ["??"])
 ("Chi "             ["??"])
 ("psi "             ["??"])
 ("Psi "             ["??"])
 ("omega "           ["??"])
 ("Omega "           ["??"])
 ("digamma "         ["??"])
 ("Digamma "         ["??"])
 ("san "             ["??"])
 ("San "             ["??"])
 ("qoppa "           ["??"])
 ("Qoppa "           ["??"])
 ("sampi "           ["??"])
 ("Sampi "           ["??"])
 ("stigma "          ["??"])
 ("Stigma "          ["??"])
 ("heta "            ["??"])
 ("Heta "            ["??"])
 ("sho "             ["??"])
 ("Sho "             ["??"])

 ;; Double-struck letters
 ("|A|"              ["????"])
 ("|B|"              ["????"])
 ("|C|"              ["???"])
 ("|D|"              ["????"])
 ("|E|"              ["????"])
 ("|F|"              ["????"])
 ("|G|"              ["????"])
 ("|H|"              ["???"])
 ("|I|"              ["????"])
 ("|J|"              ["????"])
 ("|K|"              ["????"])
 ("|L|"              ["????"])
 ("|M|"              ["????"])
 ("|N|"              ["???"])
 ("|O|"              ["????"])
 ("|P|"              ["???"])
 ("|Q|"              ["???"])
 ("|R|"              ["???"])
 ("|S|"              ["????"])
 ("|T|"              ["????"])
 ("|U|"              ["????"])
 ("|V|"              ["????"])
 ("|W|"              ["????"])
 ("|X|"              ["????"])
 ("|Y|"              ["????"])
 ("|Z|"              ["???"])
 ("|gamma|"          ["???"])
 ("|Gamma|"          ["???"])
 ("|pi|"             ["???"])
 ("|Pi|"             ["???"])

 ;; Types
 ("::"               ["???"])

 ;; Quantifiers
 ("forall"           ["???"])
 ("exists"           ["???"])

 ;; Arrows
 ("->"               ["???"])
 ;; ("-->"              ["???"])
 ("<-"               ["???"])
 ;; ("<--"              ["???"])
 ;; ("<->"              ["???"])
 ;; ("<-->"             ["???"])

 ("=>"               ["???"])
 ;; ("==>"              ["???"])
 ;; ("<="               ["???"])
 ;; ("<=="              ["???"])
 ;; ("<=>"              ["???"])
 ;; ("<==>"             ["???"])

 ;; ("|->"              ["???"])
 ;; ("|-->"             ["???"])
 ;; ("<-|"              ["???"])
 ;; ("<--|"             ["???"])

 ;; ("|=>"              ["???"])
 ;; ("|==>"             ["???"])
 ;; ("<=|"              ["???"])
 ;; ("<==|"             ["???"])

 ("~>"               ["???"])
 ;; ("~~>"              ["???"])
 ("<~"               ["???"])
 ;; ("<~~"              ["???"])

 ;; (">->"              ["???"])
 ;; ("<-<"              ["???"])
 ;; ("->>"              ["???"])
 ;; ("<<-"              ["???"])

 ;; (">->>"             ["???"])
 ;; ("<<-<"             ["???"])

 ;; ("<|-"              ["???"])
 ;; ("-|>"              ["???"])
 ;; ("<|-|>"            ["???"])

 ;; ("<-/-"             ["???"])
 ;; ("-/->"             ["???"])

 ;; ("<-|-"             ["???"])
 ;; ("-|->"             ["???"])
 ;; ("<-|->"            ["???"])

 ;; ("<-||-"            ["???"])
 ;; ("-||->"            ["???"])
 ;; ("<-||->"           ["???"])

 ;; ("-o->"             ["???"])
 ;; ("<-o-"             ["???"])

 ;; Boolean operators
 ;; ("not"              ["??"])
 ("&&"               ["???"])
 ("||"               ["???"])

 ;; Relational operators
 ("=="               ["???"])
 ("/="               ["???" "???"])
 ("<="               ["???"])
 (">="               ["???"])
 ("/<"               ["???"])
 ("/>"               ["???"])

 ;; Arithmetic
 ;; (" / "              [" ?? "])
 (" * "              [" ??? "])

 ;; Containers / Collections
 ;; ("++"               ["???"])
 ;; ("+++"              ["???"])
 ;; ("|||"              ["???"])
 ;; ("empty"            ["???"])
 ("elem"             ["???"])
 ("notElem"          ["???"])
 ("member"           ["???"])
 ("notMember"        ["???"])
 ("union"            ["???"])
 ("intersection"     ["???"])
 ("isSubsetOf"       ["???"])
 ("isProperSubsetOf" ["???"])

 ;; Other
 ;; ("<<"               ["???"])
 ;; (">>"               ["???"])
 ("<<<"              ["???"])
 (">>>"              ["???"])
 ("<|"               ["???"])
 ("|>"               ["???"])
 ("><"               ["???"])
 ;; ("mempty"           ["???"])
 ("mappend"          ["???"])
 ;; ("<*>"              ["???"])
 (" . "              [" ??? "])
 ("undefined"        ["???"])
 (":="               ["???"])
 ("=:"               ["???"])
 ("=def"             ["???"])
 ("=?"               ["???"])
 ("..."              ["???"])

 ;; Braces
 ;; ("[|"               ["???"])
 ;; ("|]"               ["???"])

 ;; Numeric subscripts
 ("_0 "              ["???"])
 ("_1 "              ["???"])
 ("_2 "              ["???"])
 ("_3 "              ["???"])
 ("_4 "              ["???"])
 ("_5 "              ["???"])
 ("_6 "              ["???"])
 ("_7 "              ["???"])
 ("_8 "              ["???"])
 ("_9 "              ["???"])

 ;; Numeric superscripts
 ("^0 "              ["???"])
 ("^1 "              ["??"])
 ("^2 "              ["??"])
 ("^3 "              ["??"])
 ("^4 "              ["???"])
 ("^5 "              ["???"])
 ("^6 "              ["???"])
 ("^7 "              ["???"])
 ("^8 "              ["???"])
 ("^9 "              ["???"]))

(provide 'haskell-unicode-input-method)

;;; haskell-unicode-input-method.el ends here
