;;; -------------------------
;;; Package system
;;; -------------------------
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;;; -------------------------
;;; UI sanity
;;; -------------------------
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)

;;; -------------------------
;;; Files
;;; -------------------------
(setq make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)

;;; -------------------------
;;; Completion / minibuffer
;;; -------------------------
(use-package vertico
  :init (vertico-mode))

(use-package orderless
  :custom (completion-styles '(orderless basic)))

(use-package marginalia
  :init (marginalia-mode))

(use-package consult)

;;; -------------------------
;;; Discovery
;;; -------------------------
(use-package which-key
  :init (which-key-mode))

;;; -------------------------
;;; Editing
;;; -------------------------
(use-package evil
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

;;; -------------------------
;;; Windows
;;; -------------------------
(use-package ace-window
  :bind ("M-o" . ace-window))

(global-set-key (kbd "C-x |") 'split-window-right)
(global-set-key (kbd "C-x -") 'split-window-below)
(global-set-key (kbd "C-x +") 'balance-windows)
(global-set-key (kbd "C-x x") 'delete-window)

;;; -------------------------
;;; Projects
;;; -------------------------
(use-package project
  :ensure nil)

;;; -------------------------
;;; Version control
;;; -------------------------
(use-package magit
  :bind ("C-x g" . magit-status))

;;; -------------------------
;;; Programming essentials
;;; -------------------------
(use-package company
  :hook (prog-mode . company-mode)
  :config
  (setq company-idle-delay 0.3
       company-minimum-prefix-length 2))

(use-package flymake
  :ensure nil
  :hook (prog-mode . flymake-mode))

;;; -------------------------
;;; IDE features (minimal)
;;; -------------------------
(use-package eglot
  :ensure nil
  :hook ((python-mode . eglot-ensure)
         (go-mode . eglot-ensure)))

;;; -------------------------
;;; Languages
;;; -------------------------
(use-package python-mode)
(use-package go-mode)

;;; -------------------------
;;; Org
;;; -------------------------
(use-package org
  :ensure nil)

