;;; outer-space-theme.el --- dark theme -*- lexical-binding: t; -*-

;; Copyright (C) 2026 terukichi

;; Author: terukichi
;; URL: https://github.com/terukichi/color-theme
;; Version: 1.2.0

;; This file is not part of GNU Emacs.

;; This file is licensed under the MIT License.
;; See the LICENSE file.

;;; Commentary:

;;; Code:

;;;###theme-autoload
(deftheme outer-space
  "dark theme for Emacs."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      (bg-dflt "#181028")
      (fg-dflt "#E5E0E7")
      (bg-csr "#AA0030")
      (active "#A51AA5")
      (inactive "#502050")
      (txt-active "#E55AE5")
      (txt-inactive "#703070")
      (lnk "#A3C3FE")
      (bg-rgn "#484058")
      (fg-cmnt "#625E77")
      (fg-str "#D0BA1A")
      (fg-kywrd "#72C5DA")
      (fg-blt "#BABFFA")
      (fg-fnc "#F55AE5")
      (fg-vrb "#C5AFF4")
      (fg-typ "#3ABD1F")
      (fg-cns "#EA6C1A")
      (fg-prp "#3EA1EA")
      (fg-ngt "#FF0000")
      (hl-ln "#302850"))

  ;; Basic
  (custom-theme-set-faces
   'outer-space
   `(default ((,class (:background ,bg-dflt :foreground ,fg-dflt))))
   `(cursor ((,class (:background ,bg-csr))))
   `(mode-line ((,class (:distant-foreground ,bg-dflt))))
   `(mode-line-active ((,class (:inherit mode-line :background ,active))))
   `(mode-line-inactive ((,class (:inherit mode-line :background ,inactive))))
   `(mode-line-buffer-id ((,class (:foreground ,fg-dflt :weight bold))))
   `(mode-line-highlight ((,class (:background ,lnk))))
   `(link ((,class (:foreground ,lnk :underline t))))
   `(region ((,class (:background ,bg-rgn))))
   `(highlight ((,class (:background ,bg-rgn))))
   `(minibuffer-prompt ((,class :foreground ,fg-blt)))
   `(isearch ((,class (:background "#755AF5" :foreground ,bg-dflt))))
   `(isearch-fail ((,class (:background ,bg-rgn :foreground "#FF0000" :slant italic))))
   `(lazy-highlight ((,class (:background "#9E8AAF"))))

   ;; Syntax
   `(font-lock-comment-face ((,class (:foreground ,fg-cmnt :slant italic))))
   `(font-lock-string-face ((,class (:foreground ,fg-str))))
   `(font-lock-keyword-face ((,class (:foreground ,fg-kywrd))))
   `(font-lock-builtin-face ((,class (:foreground ,fg-blt))))
   `(font-lock-function-name-face ((,class (:foreground ,fg-fnc :weight bold :underline t))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg-vrb :underline t))))
   `(font-lock-type-face ((,class (:foreground ,fg-typ :weight bold))))
   `(font-lock-constant-face ((,class (:foreground ,fg-cns))))
   `(font-lock-warning-face ((,class (:foreground ,fg-fnc))))
   `(font-lock-preprocessor-face ((,class (:foreground ,fg-prp))))
   `(font-lock-negation-char-face ((,class (:foreground ,fg-ngt))))

   ;; Hl-line
   `(hl-line ((,class (:background ,hl-ln))))

   ;; Line Number
   `(line-number ((,class (:background ,bg-dflt :foreground ,fg-cmnt))))
   `(line-number-current-line ((,class (:background ,hl-ln :foreground ,fg-dflt))))

   ;; Which Function Mode
   `(which-func ((,class (:foreground ,fg-dflt :underline t))))

   ;; Org-mode
   `(org-level-1 ((,class (:foreground ,fg-vrb :weight bold))))
   `(org-level-2 ((,class (:foreground "#C5CA25" :weight bold))))
   `(org-level-3 ((,class (:foreground "#15BAA5" :weight bold))))
   `(org-level-4 ((,class (:foreground "#A55AD5" :weight bold))))
   `(org-level-5 ((,class (:foreground "#A5DA55" :weight bold))))
   `(org-level-6 ((,class (:foreground "#557AD5" :weight bold))))
   `(org-level-7 ((,class (:foreground "#F58A25" :weight bold))))
   `(org-level-8 ((,class (:foreground "#15AAF5" :weight bold))))
   `(org-priority ((,class (:background "#382048" :foreground ,txt-active :weight normal :slant italic))))
   `(org-date ((,class (:foreground ,lnk :underline t))))
   `(org-todo ((,class (:foreground ,txt-active))))
   `(org-done ((,class (:foreground ,txt-inactive :strike-through t))))
   `(org-headline-done ((,class (:inherit org-done))))
   `(org-block ((,class (:background "#282038"))))
   `(org-hide ((,class (:foreground ,bg-dflt))))
   `(org-verbatim ((,class (:foreground ,fg-typ))))
   `(org-code ((,class (:foreground ,fg-fnc))))

   ;; Org Agenda
   `(org-agenda-date ((,class (:foreground ,lnk))))
   `(org-agenda-date-today ((,class (:foreground ,txt-active :underline t))))
   `(org-agenda-date-weekend ((,class (:foreground "#9E809E"))))
   `(org-time-grid ((,class (:foreground ,fg-cmnt))))
   ))

;; Org Priority
(with-eval-after-load 'org
  (setq org-priority-faces
	    '((?A . (:inherit org-priority :weight bold :slant normal))
	      (?B . (:inherit org-priority :weight normal :slant normal)))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'outer-space)

;;; outer-space-theme.el ends here
