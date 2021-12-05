(define-module (gnu packages emacs-pkgs)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system cmake)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system emacs)
  #:use-module (guix build-system glib-or-gtk)
  #:use-module (guix build-system perl)
  #:use-module (guix build-system trivial)
  #:use-module (guix utils)
  #:use-module (srfi srfi-1)
  #:use-module (ice-9 match))

(define-public emacs-ligature
  (package
    (name "emacs-ligature")
    (version "d3426509cc5436a12484d91e48abd7b62429b7ef")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
	     (url "https://github.com/mickeynp/ligature.el")
	     (commit version)))
       (file-name (git-file-name name version))
       (sha256
	(base32 "1a1sff38mwhpwz7dg9swp6q9zi1qwy9k48b4bcc66cqbyj8l78bd"))))
    (build-system emacs-build-system)
    (home-page "https://github.com/mickeynp/ligature.el")
    (synopsis "Display typographical ligatures in Emacs")
    (description
     "This package maps ordinary graphemes (characters) to fancy
ligatures, if both your version of Emacs and the font supports it.")
    (license license:gpl3)))
