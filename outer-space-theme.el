;;; outer-space-theme.el ---dark theme -*- lexical-binding: t -*-

;; Copyright (C) 2026 terukichi

;; Author: terukichi
;; URL: https://github.com/terukichi/color-theme
;; Version: 1.1.0

;; This file is not part of GNU Emacs.

;; This file is licensed under the MIT License.
;; See the LICENSE file or details.

;;; Commentary:

;;; Code:

;;;###theme-autoload
(deftheme outer-space
  "dark theme for Emacs."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      (bg-dfl "#181028")
      (fg-dfl "#E5E0E7")
      (csr "#AA0030")
      (active "#A51AA5")
      (inactive "#502050")
      (lnk "#A3C3FE")
      (rgn "#484058")
      (cmnt "#625E77")
      (str "#D0BA1A")
      (kywrd "#72C5DA")
      (blt "#BABFFA")
      (fnc "#F55AE5")
      (vrb "#C5AFF4")
      (typ "#3ABD1F")
      (cns "#EA6C1A")
      (prp "#3EA1EA")
      (ngt "#FF0000")
      (hl-ln "#302850"))

  ;; Basic
  (custom-theme-set-faces
   'outer-space
   `(default ((,class (:background ,bg-dfl :foreground ,fg-dfl))))
   `(cursor ((,class (:background ,csr))))
   `(mode-line ((,class (:distant-foreground ,bg-dfl))))
   `(mode-line-active ((,class (:inherit mode-line :background ,active))))
   `(mode-line-inactive ((,class (:inherit mode-line :background ,inactive))))
   `(mode-line-buffer-id ((,class (:foreground ,fg-dfl :weight bold))))
   `(mode-line-highlight ((,class (:background ,lnk))))
   `(link ((,class (:foreground ,lnk :underline t))))
   `(region ((,class (:background ,rgn))))
   `(highlight ((,class (:background ,rgn))))
   `(minibuffer-prompt ((,class :foreground ,blt)))
   `(isearch ((,class (:background "#755AF5" :foreground ,bg-dfl))))
   `(isearch-fail ((,class (:background ,rgn :foreground "#FF0000" :slant italic))))
   `(lazy-highlight ((,class (:background "#9E8AAF"))))
   
   ;; Syntax
   `(font-lock-comment-face ((,class (:foreground ,cmnt :slant italic))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-keyword-face ((,class (:foreground ,kywrd))))
   `(font-lock-builtin-face ((,class (:foreground ,blt))))
   `(font-lock-function-name-face ((,class (:foreground ,fnc :weight bold :underline t))))
   `(font-lock-variable-name-face ((,class (:foreground ,vrb :underline t))))
   `(font-lock-type-face ((,class (:foreground ,typ :weight bold))))
   `(font-lock-constant-face ((,class (:foreground ,cns))))
   `(font-lock-warning-face ((,class (:foreground ,fnc))))
   `(font-lock-preprocessor-face ((,class (:foreground ,prp))))
   `(font-lock-negation-char-face ((,class (:foreground ,ngt))))

   ;; Hl-line
   `(hl-line ((,class (:background ,hl-ln))))

   ;; Line Number
   `(line-number ((,class (:background ,bg-dfl :foreground ,cmnt))))
   `(line-number-current-line ((,class (:background ,hl-ln :foreground ,fg-dfl))))

   ;; Which Function Mode
   `(which-func ((,class (:foreground ,fg-dfl :underline t))))

   ;; Org-mode
   `(org-level-1 ((,class (:foreground ,vrb :weight bold))))
   `(org-level-2 ((,class (:foreground "#C5CA25" :weight bold))))
   `(org-level-3 ((,class (:foreground "#15BAA5" :weight bold))))
   `(org-level-4 ((,class (:foreground "#A55AD5" :weight bold))))
   `(org-level-5 ((,class (:foreground "#A5DA55" :weight bold))))
   `(org-level-6 ((,class (:foreground "#557AD5" :weight bold))))
   `(org-level-7 ((,class (:foreground "#F58A25" :weight bold))))
   `(org-level-8 ((,class (:foreground "#15AAF5" :weight bold))))
   `(org-priority ((,class (:background "#382048" :foreground ,active :weight normal :slant italic))))
   `(org-date ((,class (:foreground ,lnk :underline t))))
   `(org-todo ((,class (:foreground ,active))))
   `(org-done ((,class (:foreground ,inactive :strike-through t))))
   `(org-headline-done ((,class (:inherit org-done))))
   `(org-block ((,class (:background "#282038"))))

   ;; Org Agenda
   `(org-agenda-date ((,class (:foreground ,lnk))))
   `(org-agenda-date-today ((,class (:foreground ,active :underline t))))
   `(org-agenda-date-weekend ((,class (:foreground "#9E809E"))))
   `(org-time-grid ((,class (:foreground ,cmnt))))
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

;;; outer-space-theme.el ends here.
