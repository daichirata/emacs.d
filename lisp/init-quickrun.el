;; (install-elisp "https://raw.github.com/syohex/emacs-quickrun/master/quickrun.el")
(require 'quickrun)
(autoload 'quickrun "quickrun" nil t)
(push '("*quickrun*") popwin:special-display-config)
(global-set-key (kbd "<f5>") 'quickrun)
(global-set-key (kbd "C-c q") 'quickrun)
