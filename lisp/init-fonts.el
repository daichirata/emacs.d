;; (setq-default line-spacing 0)

;; 以下が Mac 用のフォント設定
(when (memq window-system '(mac ns))
  (let* ((size 15)
         (jpfont "Hiragino Maru Gothic ProN")
         (asciifont "Monaco")
         (h (* size 10)))
    (set-face-attribute 'default nil :family asciifont :height h)
    (set-fontset-font t 'katakana-jisx0201 jpfont)
    (set-fontset-font t 'japanese-jisx0208 jpfont)
    (set-fontset-font t 'japanese-jisx0212 jpfont)
    (set-fontset-font t 'japanese-jisx0213-1 jpfont)
    (set-fontset-font t 'japanese-jisx0213-2 jpfont)
    (set-fontset-font t '(#x0080 . #x024F) asciifont))
  (setq face-font-rescale-alist
        '(("^-apple-hiragino.*" . 1.2)
          (".*-Hiragino Maru Gothic ProN-.*" . 1.2)
          (".*osaka-bold.*" . 1.2)
          (".*osaka-medium.*" . 1.2)
          (".*courier-bold-.*-mac-roman" . 1.0)
          (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
          (".*monaco-bold-.*-mac-roman" . 0.9)
          ("-cdac$" . 1.3)))
  ;; C-x 5 2 で新しいフレームを作ったときに同じフォントを使う
  (setq frame-inherited-parameters '(font tool-bar-lines)))

;; (when (and (>= emacs-major-version 24)
;;            (eq window-system 'ns))
;;   ;; フォントセットを作る
;;   (let* ((fontset-name "myfonts") ; フォントセットの名前
;;          ;; ASCIIフォントのサイズ [9/10/12/14/15/17/19/20/...]
;;          (size (if (string= (system-name) "MacBookAir.local") 15 14))
;;          (asciifont "Menlo") ; ASCIIフォント
;;          (jpfont "Hiragino Maru Gothic ProN") ; 日本語フォント
;;          (font (format "%s-%d:weight=normal:slant=normal" asciifont size))
;;          (fontspec (font-spec :family asciifont))
;;          (jp-fontspec (font-spec :family jpfont))
;;          (fsn (create-fontset-from-ascii-font font nil fontset-name)))
;;     (set-fontset-font fsn 'japanese-jisx0213.2004-1 jp-fontspec)
;;     (set-fontset-font fsn 'japanese-jisx0213-2 jp-fontspec)
;;     (set-fontset-font fsn 'katakana-jisx0201 jp-fontspec) ; 半角カナ
;;     (set-fontset-font fsn '(#x0080 . #x024F) fontspec)    ; 分音符付きラテン
;;     (set-fontset-font fsn '(#x0370 . #x03FF) fontspec))   ; ギリシャ文字

;;   ;; デフォルトのフレームパラメータでフォントセットを指定
;;   (add-to-list 'default-frame-alist '(font . "fontset-myfonts"))

;;   ;; フォントサイズの比を設定
;;   (dolist (elt '(("^-apple-hiragino.*"               . 1.2)
;;                  (".*osaka-bold.*"                   . 1.2)
;;                  (".*osaka-medium.*"                 . 1.2)
;;                  (".*courier-bold-.*-mac-roman"      . 1.0)
;;                  (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;;                  (".*monaco-bold-.*-mac-roman"       . 0.9)
;;                  (".*SetoFont-.*"                    . 1.2)
;;                  (".*SetoFontMini-.*"                . 1.0)))
;;     (add-to-list 'face-font-rescale-alist elt))

;;   ;; デフォルトフェイスにフォントセットを設定
;;   ;; # これは起動時に default-frame-alist に従ったフレームが
;;   ;; # 作成されない現象への対処
;;   (set-face-font 'default "fontset-myfonts"))

;; ;; Share-TechMono
;; ;; Menlo
;; ;; (jpfont "SetoFont") ; 日本語フォント

(provide 'init-fonts)
