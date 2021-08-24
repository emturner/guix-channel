(define-module (emturner packages lang ats)
  #:use-module (guix packages)
  #:use-module (gnu packages autotools)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:)

  (define-public ats-anairiats
    (package
      (name "ats-lang-anairiats")
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
      (name "ats2-lang-postiats")
      (version "0.4.2")
      (source
        (origin
          (method url-fetch)
          (uri (string-append 
                 "https://sourceforge.net/projects/ats2-lang/"
                 "files/ats2-lang/ats2-postiats-0.4.2/"
                 "ATS2-Postiats-0.4.2.tgz/download"))
          (sha256
            (base32
              "1lrl86a1j3705ysvjs5m45khraa6bih6v6fpjwz5w7rjc9gfgf2i"))))
      (build-system gnu-build-system)
      (native-inputs `())
      (arguments 
        `(#:parallel-build? #f
          #:make-flags `("all")
          #:phases (modify-phases 
                     %standard-phases 
                     (delete 'check)
                     (add-after 'unpack 'rm-doc-dirs 
                       (lambda _ 
                         ;; Remove DOCUGEN folders - because this breaks 
                         ;; the strip binaries step for some reason
                         (invoke "find" 
                                 "." 
                                 "-depth"
                                 "-name"
                                 "DOCUGEN"
                                 "-execdir"
                                 "rm"
                                 "-r"
                                 "{}"
                                 "+"))))))
  
      (home-page "http://www.ats-lang.org/")
      (synopsis "ATS2: Unleashing the Potentials of Types and Templates")
      (description "A Programming Language System to Unleash the Potentials of Types and Templates")
      (license license:gpl3))))
