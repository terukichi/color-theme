# Color Theme for Emacs

## Themes
### [*Outer Space*](outer-space-theme.el)
- Outer Space is a dark theme for Emacs.
- I aimed to create a theme that maintains its readability and visibility even with setting the frame transparency.
  - Example:
    ```emacs-lisp
    (add-to-list 'default-frame-alist '(alpha . 85))
    ```

## Installation

1. Download a theme file or this repository.
2. Place the downloaded file in your `custom-theme-directory`.
     - If you don't have a `custom-theme-directory`, make directory and add the path in your init file.
       ```emacs-lisp
       (setq custom-theme-directory "...")
       (add-to-list 'custom-theme-load-path "...")
       ```
3. Calculate the SHA-256 hash for the downloaded file.
4. Add the hash to `custom-safe-themes` in your init file.
   ```emacs-lisp
   (add-to-list 'custom-safe-themes "...")
   ```
5. Add the following line to your init file.
   ```emacs-lisp
   (load-theme 'outer-space t)
   ```
6. Restart Emacs.
