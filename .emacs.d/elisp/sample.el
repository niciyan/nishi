;; this is just sample Elisp document

;;; メニューバー
;;(menu-bar-mode 0)

;;; ツールバー
;;(tool-bar-mode 0)


;;; 対応する括弧を光らせる。
(show-paren-mode 1)
;;; ウィンドウ内に収まらないときだけ括弧内も光らせる。
(setq show-paren-style 'mixed)

;;; 現在行を目立たせる
;;(global-hl-line-mode)

;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; カーソルの場所を保存する
;;(require 'saveplace)
;;(setq-default save-place t)

;;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; beep音を消す
(defun my-bell-function ()
  (unless (memq this-command
        '(isearch-abort abort-recursive-edit exit-minibuffer
              keyboard-quit mwheel-scroll down up next-line previous-line
              backward-char forward-char))
    (ding)))
(setq ring-bell-function 'my-bell-function)

;; スタートアップメッセージを表示させない
(setq inhibit-startup-message t)

;; use tab by applying space
(setq-default tab-width 4 indent-tabs-mode nil)

;; scroll by each line
(setq scroll-conservatively 1)
