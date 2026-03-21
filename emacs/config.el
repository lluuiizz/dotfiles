;; Font size
(set-face-attribute 'default nil :height 130)

;; Disable Menu and Tool bars
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Relative Numbering
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;; Custom Theme
(load-theme 'doom-gruvbox t)

;; Projectile Keymap
(global-set-key (kbd "C-x p") 'projectile-command-map)

;; Neotree Configuration
(global-set-key (kbd "C-c o")  'neotree-toggle)

;; Magit Bindsym
(global-set-key (kbd "C-c m") 'magit)

;; Vterm Configuration --  TODO
(global-set-key (kbd "C-c ç") 'vterm)

;; Helm Simple Config
(setq helm-split-window-in-side-p t
      helm-move-to-line-cycle-in-source t)
(ido-mode 1)
(helm-mode 1)

;; Helm Keymapping
(require 'helm)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-c") 'helm-calcul-expression)
(global-set-key (kbd "C-s") 'helm-occur)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; LSP Servers for Eglot
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) . ("clangd")))
(add-hook 'c++-mode-hook 'eglot-ensure)

;; Previous/Next  Window Buffer
(global-set-key (kbd "C-c p") 'previous-buffer)
(global-set-key (kbd "C-c n") 'next-buffer)
