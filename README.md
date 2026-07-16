# Color Theme for Emacs

## Outer Space
"Outer Space" is a dark theme for Emacs.

## Installation

1. Download [outer-space-theme.el](outer-space-theme.el).
2. Place the downloaded file in your "custom-theme-directory".
     - If you don't have a "custom-theme-directory", make directory and add the path in your initialize file.
       ```emacs-lisp
       (setq custom-theme-directory "...")
       (add-to-list 'custom-theme-load-path "...")
       ```
4. Calcuation the SHA-256 hash for the downloaded file.
5. Add the hash to "custom-safe-themes" in your initialize file.
   ```emacs-lisp
   (add-to-list 'custom-safe-themes "...")
   ```
6. Add the following line to your init file.
   ```emacs-lisp
   (load-theme 'outer-space t)
   ```
