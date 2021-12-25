(define-module (emturner packages lang ats)
  #:use-module (gnu packages autotools)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix utils))

(define-public ats-anairiats
  (package
    (name "ats-anairiats")
    (version "0.2.12")
    (source
      (origin
        (method url-fetch)
        (uri (string-append
               "https://sourceforge.net/projects/ats-lang/files/ats-lang/anairiats-"
               version "/" name "-" version ".tgz/download"))
        (sha256
          (base32
            "0l2kj1fzhxwsklwmn5yj2vp9rmw4jg0b18bzwqz72bfi8i39736k"))))
    (build-system gnu-build-system)
    (native-inputs `())
    (arguments
      `(#:make-flags `()
        #:phases (modify-phases
                   %standard-phases
                   (delete 'check)
                   (add-after
                     'install
                     'cpy-src
                     (lambda* (#:key outputs #:allow-other-keys)
                              (let* ((out (assoc-ref outputs "out"))
                                     (tgt (string-append
                                            out
                                            "/lib/ats-anairiats-0.2.12/")))
                                (copy-recursively "." tgt)
                                #t)))
                   (add-after 'unpack 'rm-test-dirs
                     (lambda _
                       ;; Remove TEST folder - because the tests don't work
                       ;; and trying to not build them is a pain.
                       (invoke "find"
                               "."
                               "-depth"
                               "-name"
                               "TEST"
                               "-execdir"
                               "rm"
                               "-r"
                               "{}"
                               "+"))))))
    (home-page "http://www.ats-lang.org/")
    (synopsis "An implentation of ATS1 in ATS1, boostrapped via gcc")
    (description "ATS1 is the source language of the ATS2 compiler.")
    (license license:gpl3)))

(define-public ats-postiats
   (package
    (name "ats-postiats")
    (version "0.4.2")
    (source
      (origin
        (method git-fetch)
        (uri (git-reference
               (url "https://github.com/githwxi/ATS-Postiats")
               (commit (string-append "v" version))))
        (file-name (git-file-name name version))
        (sha256
          (base32 "0knk06xwv43dr28fd3kj022j314p348i8xgx7ln5jnzvpgkx0sr3"))))
    (build-system gnu-build-system)
    (native-inputs (list ats-anairiats))
    (arguments
      `(#:parallel-build? #f
        #:make-flags (list "-f"
                       "Makefile_devl"
                       "all"
                       "ATSHOMERELOC=ATS-0.2.1"
                       (string-append "ATSHOME="
                                      (assoc-ref %build-inputs "ats-anairiats"))
                       (string-append "PATSHOME=" (getcwd) "/source")
                       "C3NSTRINTKND=intknd")
        #:phases (modify-phases
                   %standard-phases
                   (delete 'configure)
                   (delete 'check)
                   (replace 'install
                     (lambda* (#:key outputs #:allow-other-keys)
                              (let* ((out (assoc-ref outputs "out"))
                                     (tgt (string-append
                                            out
                                            "")))
                                (copy-recursively "." tgt)
                                #t)))
                   (add-before 'build 'make-makefiles-writeable
                      (lambda _
                        (for-each make-file-writable (find-files "." "^Makefile$")))))))
    (home-page "http://www.ats-lang.org/")
    (synopsis "A Programming Language System to Unleash the
Potentials of Types and Templates")
    (description "ATS/Postiats (or ATS2/Postiats) is the name
for the current compiler of ATS2, the successor of ATS (or ATS1).")
    (license license:gpl3)))
