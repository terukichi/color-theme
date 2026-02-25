;;; outer-space-theme.el --- -*- lexical-binding: t -*-

;; Copyright (C) 2026 terukichi

;; Author: terukichi
;; URL: https://github.com/terukichi/color-theme
;; Version: 0.1.0

;; This file is not part of GNU Emacs.

;; This file is licensed under the MIT License.
;; See the LICENSE file or details.

;;; Commentary:

;;; Code:

(deftheme outer-space
  "dark theme."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((class '((class color) (min-colors 89)))
      (bg-dfl "#181028")
      (fg-dfl "#FFFFFF")
      (csr "#aa0000")
      (active "#a51aa5")
      (inactive "#502050")
      (cmnt "#726e77")
      (str "#D0BA1A")
      (kywrd "#3a943d")
      (blt "#BABFFa")
      (fnc "#bd1a4b")
      (vrb "#AA00BB")
      (typ "#72c5da")
      (cns "#AAAAAA")
      (wrn "#AA00AA")
      (prp "#00BBBB")
      (ngt "#ff0000")
      (hl-ln "#3E1010"))

  (global-font-lock-mode t)
  (global-hl-line-mode t)

  ;; Basic
  (custom-theme-set-faces
   'outer-space
   `(default ((,class (:background ,bg-dfl :foreground ,fg-dfl))))
   `(cursor ((,class (:background ,csr))))
   `(mode-line-active ((,class (:background ,active))))
   `(mode-line-inactive ((,class (:background ,inactive))))
   `(link ((,class (:foreground "#a3c3fe"))))
   `(region ((,class (:background "#585068"))))
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
   `(font-lock-warning-face ((,class (:foreground ,wrn))))
   `(font-lock-preprocessor-face ((,class (:foreground ,prp))))
   `(font-lock-negation-char-face ((,class (:foreground ,ngt))))

   ;; Hl-line
   `(hl-line ((,class (:background ,hl-ln))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'outer-space)

;;; outer-space-theme.el ends here
