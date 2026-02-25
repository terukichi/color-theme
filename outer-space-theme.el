;;; outer-space-theme.el ---dark theme -*- lexical-binding: t -*-

;; Copyright (C) 2026 terukichi

;; Author: terukichi
;; URL: https://github.com/terukichi/color-theme
;; Version: 0.2.0

;; This file is not part of GNU Emacs.

;; This file is licensed under the MIT License.
;; See the LICENSE file or details.

;;; Commentary:

;;; Code:

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
      (cmnt "#625E77")
      (str "#D0BA1A")
      (kywrd "#3A943D")
      (blt "#BABFFA")
      (fnc "#BD1A4B")
      (vrb "#AA00BB")
      (typ "#72C5DA")
      (cns "#EA6C1A")
      (prp "#3EA1EA")
      (ngt "#FF0000")
      (hl-ln "#302850"))

  (global-font-lock-mode t)
  (global-hl-line-mode t)

  ;; Basic
  (custom-theme-set-faces
   'outer-space
   `(default ((,class (:background ,bg-dfl :foreground ,fg-dfl))))
   `(cursor ((,class (:background ,csr))))
   `(mode-line-active ((,class (:background ,active))))
   `(mode-line-inactive ((,class (:background ,inactive))))
   `(link ((,class (:foreground ,lnk :underline t))))
   `(region ((,class (:background "#484058"))))
   `(highlight ((,class (:background "#585068"))))
   `(minibuffer-prompt ((,class :foreground ,blt)))
   
   ;; Syntax
   `(font-lock-comment-face ((,class (:foreground ,cmnt))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-keyword-face ((,class (:foreground ,kywrd))))
   `(font-lock-builtin-face ((,class (:foreground ,blt))))
   `(font-lock-function-name-face ((,class (:foreground ,fnc :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,vrb))))
   `(font-lock-type-face ((,class (:foreground ,typ))))
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
   `(org-level-1 ((,class (:foreground "#D53AC5" :weight bold))))
   `(org-level-2 ((,class (:foreground "#C5CA25" :weight bold))))
   `(org-level-3 ((,class (:foreground "#15BAA5" :weight bold))))
   `(org-level-4 ((,class (:foreground "#A55AD5" :weight bold))))
   `(org-level-5 ((,class (:foreground "#A5DA55" :weight bold))))
   `(org-level-6 ((,class (:foreground "#557AD5" :weight bold))))
   `(org-level-7 ((,class (:foreground "#F58A25" :weight bold))))
   `(org-level-8 ((,class (:foreground "#15AAF5" :weight bold))))
   `(org-priority ((,class (:foreground ,active :weight normal))))
   `(org-date ((,class (:foreground ,lnk :underline t))))
   `(org-todo ((,class (:foreground ,active))))
   `(org-done ((,class (:foreground ,inactive :strike-through t))))
   `(org-headline-done ((,class (:inherit org-done))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'outer-space)

;;; outer-space-theme.el ends here.
