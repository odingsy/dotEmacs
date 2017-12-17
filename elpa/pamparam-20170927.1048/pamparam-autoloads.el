;;; pamparam-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "pamparam" "pamparam.el" (22991 34184 0 0))
;;; Generated autoloads from pamparam.el

(autoload 'pamparam-drill "pamparam" "\
Start a learning session.

When `default-directory' is in a *.pam repository, use that repository.
Otherwise, use the repository that `pamparam-path' points to.

See `pamparam-sync' for creating and updating a *.pam repository.

If you have no more cards scheduled for today, use `pamparam-pull'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("pamparam-pkg.el") (22991 34156 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; pamparam-autoloads.el ends here
