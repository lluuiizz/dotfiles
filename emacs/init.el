;; Enabling MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Package Installation
(use-package neotree
  :ensure t)

(use-package doom-themes
  :ensure t
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  :config
  (load-theme 'doom-gruvbox t)
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config))

(use-package smartparens
  :ensure t
  :hook (prog-mode text-mode)
  :pconfig
  (require 'smartparens-config))

(use-package projectile
  :ensure t
  :init
  (projectile-mode 1))

(use-package nerd-icons
  :ensure t)

(use-package magit
  :ensure t)

(use-package vterm
  :ensure t)

(use-package helm
  :ensure t)

(use-package corfu
  :ensure t
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.2)
  (corfu-cycle t)
  :init
  (global-corfu-mode))

(use-package eglot
  :hook (eglot-managed-mode . corfu-mode)
  :config
  (setq-local corfu-quit-at-boundary t
	      corfu-quit-no-match t))

;; Load Config File
(load-file (expand-file-name "config.el" user-emacs-directory))
