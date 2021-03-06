(define-module (emturner packages rust-apps)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages base)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages version-control))

(define-public rust-mockall-derive-0.10
  (package
    (name "rust-mockall-derive")
    (version "0.10.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mockall_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0cwhcfsc16b8p4yrsrxnhfxfdn0n89cmjja13wb6kxik8hhmpqp7"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/asomers/mockall")
    (synopsis "Procedural macros for Mockall
")
    (description "Procedural macros for Mockall
")
    (license (list license:expat license:asl2.0))))

(define-public rust-fragile-1
  (package
    (name "rust-fragile")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fragile" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1wlihmkjyhvl5rckal32p010piy1l15s6l81h7z31jcd971kk839"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/mitsuhiko/rust-fragile")
    (synopsis
      "Provides wrapper types for sending non-send values to other threads.")
    (description
      "This package provides wrapper types for sending non-send values to other threads.")
    (license license:asl2.0)))

(define-public rust-downcast-0.10
  (package
    (name "rust-downcast")
    (version "0.10.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "downcast" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "07bh0l95gwrzak6rj29v8kkm577d8vivxsxhqgscf64b4bq59d2b"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/fkoep/downcast-rs")
    (synopsis
      "Trait for downcasting trait objects back to their original types.")
    (description
      "Trait for downcasting trait objects back to their original types.")
    (license license:expat)))

(define-public rust-mockall-0.10
  (package
    (name "rust-mockall")
    (version "0.10.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mockall" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1h4s2bpkkm0zyd6mnc3718p0ysmcxyiwrjlk4hrawy7si8r73dba"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-downcast" ,rust-downcast-0.10)
         ("rust-fragile" ,rust-fragile-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-mockall-derive" ,rust-mockall-derive-0.10)
         ("rust-predicates" ,rust-predicates-1)
         ("rust-predicates-tree" ,rust-predicates-tree-1))))
    (home-page "https://github.com/asomers/mockall")
    (synopsis
      "A powerful mock object library for Rust.
")
    (description
      "This package provides a powerful mock object library for Rust.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-versions-3
  (package
    (name "rust-versions")
    (version "3.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "versions" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ffjw6mbsm3nrgg03b76jfc41lg44yz1pyqmv6zj37q88i6y4wri"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-itertools" ,rust-itertools-0.10)
         ("rust-nom" ,rust-nom-6)
         ("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/fosskers/rs-versions")
    (synopsis
      "A library for parsing and comparing software version numbers.")
    (description
      "This package provides a library for parsing and comparing
software version numbers.")
    (license license:expat)))

(define-public rust-urlencoding-1
  (package
    (name "rust-urlencoding")
    (version "1.3.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "urlencoding" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1yqgq2qigm1s8zyv23j0422j4vn20ppnnizx9b7p629sw1sh27ss"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://lib.rs/urlencoding")
    (synopsis
      "A Rust library for doing URL percentage encoding.")
    (description
      "This package provides a Rust library for doing URL percentage encoding.")
    (license license:expat)))

(define-public rust-unicode-segmentation-1
  (package
    (name "rust-unicode-segmentation")
    (version "1.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "unicode-segmentation" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0nrqfgxkh00wb5dhl0874z20789i2yjimp6ndgh4ay4yjjd895c8"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/unicode-rs/unicode-segmentation")
    (synopsis
      "This crate provides Grapheme Cluster, Word and Sentence boundaries
according to Unicode Standard Annex #29 rules.
")
    (description
      "This crate provides Grapheme Cluster, Word and Sentence boundaries
according to Unicode Standard Annex #29 rules.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-starship-module-config-derive-0.2
  (package
    (name "rust-starship-module-config-derive")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri
               "starship_module_config_derive"
               version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "09327jvaf2b4xwg0s8l3afrrg140illa0ff6wkwfi4i8pl7dpacp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://starship.rs")
    (synopsis
      "The minimal, blazing-fast, and infinitely customizable prompt for
any shell! ??\x98\x84??\x9f\x8c\x8c????\x8f")
    (description
      "The minimal, blazing-fast, and infinitely customizable prompt for
any shell! ??\x98\x84??\x9f\x8c\x8c????\x8f")
    (license license:isc)))

(define-public rust-shadow-rs-0.6
  (package
    (name "rust-shadow-rs")
    (version "0.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "shadow-rs" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0sps996yhchz43zfk9zysjpirz638s1hbhspp998bk6v9l6k7j10"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-git2" ,rust-git2-0.13))))
    (home-page
      "https://github.com/baoyachi/shadow-rs")
    (synopsis
      "A build-time information stored in your rust project")
    (description
      "This package provides a build-time information stored in your rust project")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.126")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0hsdh39qj0g187nwndfzg67q4qajbm5g6x0fr5xarblmk2y7sfln"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://serde.rs")
    (synopsis
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
      "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.126")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "00vdk7y3j8h2xv28a2i2ad1d19g5iwrdknbq8yp79v6axamhaxgc"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis
      "A generic serialization/deserialization framework")
    (description
      "This package provides a generic serialization/deserialization framework")
    (license (list license:expat license:asl2.0))))

(define-public rust-semver-1
  (package
    (name "rust-semver")
    (version "1.0.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "semver" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1gna1p10i86sf1pqfqndkwl0wks35x84yvjw77c74ckzxrbsqfjz"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/dtolnay/semver")
    (synopsis
      "Parser and evaluator for Cargo's flavor of Semantic Versioning")
    (description
      "Parser and evaluator for Cargo's flavor of Semantic Versioning")
    (license (list license:expat license:asl2.0))))

(define-public rust-dlv-list-0.2
  (package
    (name "rust-dlv-list")
    (version "0.2.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dlv-list" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "06r1nskj3x56p5wqz2bgl6q3rpyymrb0k0zpbvk8c6qcd4mkzpv8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rand" ,rust-rand-0.8))))
    (home-page
      "https://github.com/sgodwincs/dlv-list-rs")
    (synopsis
      "Semi-doubly linked list implemented using a vector")
    (description
      "Semi-doubly linked list implemented using a vector")
    (license license:expat)))

(define-public rust-ordered-multimap-0.3
  (package
    (name "rust-ordered-multimap")
    (version "0.3.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ordered-multimap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1194q7sb2d6chbllsn7237dhhvx04iqr3sq0ii16w1pcv5x2qrqw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-dlv-list" ,rust-dlv-list-0.2)
         ("rust-hashbrown" ,rust-hashbrown-0.9)
         ("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/sgodwincs/ordered-multimap-rs")
    (synopsis "Insertion ordered multimap")
    (description "Insertion ordered multimap")
    (license license:expat)))

(define-public rust-rust-ini-0.17
  (package
    (name "rust-rust-ini")
    (version "0.17.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rust-ini" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "08hfh6p2svznza3m07vavsc4c8x4g6d715sz58rzh73sm551qiv3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-ordered-multimap"
          ,rust-ordered-multimap-0.3)
         ("rust-unicase" ,rust-unicase-2))))
    (home-page
      "https://github.com/zonyitoo/rust-ini")
    (synopsis
      "An Ini configuration file parsing library in Rust")
    (description
      "An Ini configuration file parsing library in Rust")
    (license license:expat)))

(define-public rust-rayon-core-1
  (package
    (name "rust-rayon-core")
    (version "1.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon-core" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "13kdcnqp2p1a5a3amamfjpnm7ay463vq4dfxy4rrh9shr3i210fp"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam-channel"
          ,rust-crossbeam-channel-0.5)
         ("rust-crossbeam-deque"
          ,rust-crossbeam-deque-0.8)
         ("rust-crossbeam-utils"
          ,rust-crossbeam-utils-0.8)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-num-cpus" ,rust-num-cpus-1))))
    (home-page "https://github.com/rayon-rs/rayon")
    (synopsis "Core APIs for Rayon")
    (description "Core APIs for Rayon")
    (license (list license:asl2.0 license:expat))))

(define-public rust-rayon-1
  (package
    (name "rust-rayon")
    (version "1.5.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rayon" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "143dl2453bazgk7rwjrickmyqd0ks3q69nfz8axcins19n0clsn0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-crossbeam-deque"
          ,rust-crossbeam-deque-0.8)
         ("rust-either" ,rust-either-1)
         ("rust-rayon-core" ,rust-rayon-core-1))))
    (home-page "https://github.com/rayon-rs/rayon")
    (synopsis
      "Simple work-stealing parallelism for Rust")
    (description
      "Simple work-stealing parallelism for Rust")
    (license (list license:asl2.0 license:expat))))

(define-public rust-packed-simd-2-0.3
  (package
    (name "rust-packed-simd-2")
    (version "0.3.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "packed_simd_2" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1mwrvjljni8yxp3jy7bl1vzzf0m2kal6vpfz3bbgscrp5n58ar0f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cfg-if" ,rust-cfg-if-0.1)
         ("rust-core-arch" ,rust-core-arch-0.1)
         ("rust-libm" ,rust-libm-0.1)
         ("rust-sleef-sys" ,rust-sleef-sys-0.1))))
    (home-page
      "https://github.com/rust-lang/packed_simd")
    (synopsis "Portable Packed SIMD vectors")
    (description "Portable Packed SIMD vectors")
    (license (list license:expat license:asl2.0))))

(define-public rust-rand-0.8
  (package
    (name "rust-rand")
    (version "0.8.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "rand" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1n5wska2fbfj4dsfz8mc0pd0dgjlrb6c9anpk5mwym345rip6x9f"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-packed-simd-2" ,rust-packed-simd-2-0.3)
         ("rust-rand-chacha" ,rust-rand-chacha-0.3)
         ("rust-rand-core" ,rust-rand-core-0.6)
         ("rust-rand-hc" ,rust-rand-hc-0.3)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://rust-random.github.io/book")
    (synopsis
      "Random number generators and other randomness functionality.
")
    (description
      "Random number generators and other randomness functionality.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.107")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "06fjyglysl1aph07hc8cl1akw25lizcvwppqbralynys0hsf5rgv"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc.
")
    (description "Raw FFI bindings to platform libraries like libc.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-process-control-3
  (package
    (name "rust-process-control")
    (version "3.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "process_control" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1v5j6ajr3fprpay8754874rmi622a1vk5rld88p1jk04wha413pm"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-crossbeam-channel"
          ,rust-crossbeam-channel-0.5)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://github.com/dylni/process_control")
    (synopsis
      "Methods for ergonomically running processes with timeouts
")
    (description
      "Methods for ergonomically running processes with timeouts
")
    (license (list license:expat license:asl2.0))))

(define-public rust-path-slash-0.1
  (package
    (name "rust-path-slash")
    (version "0.1.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "path-slash" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "06dnnmd3fvmr9ngwgj0xrfj9s8h09m9dgf3zlqsbalzk9wybpb1w"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rhysd/path-slash")
    (synopsis
      "Conversion to/from a file path from/to slash path")
    (description
      "Conversion to/from a file path from/to slash path")
    (license license:expat)))

(define-public rust-os-info-3
  (package
    (name "rust-os-info")
    (version "3.0.6")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "os_info" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1pbcf2in8i9w6zjzk6jmrd89gm5h7qpyqi3hvkl0axpzp1m57lmk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-log" ,rust-log-0.4)
         ("rust-serde" ,rust-serde-1)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://github.com/stanislav-tkach/os_info")
    (synopsis
      "Detect the operating system type and version.")
    (description
      "Detect the operating system type and version.")
    (license license:expat)))

(define-public rust-pathdiff-0.2
  (package
    (name "rust-pathdiff")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "pathdiff" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1pa4dcmb7lwir4himg1mnl97a05b2z0svczg62l8940pbim12dc8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-camino" ,rust-camino-1))))
    (home-page "https://github.com/Manishearth/pathdiff")
    (synopsis "Library for diffing paths to obtain relative paths")
    (description "Library for diffing paths to obtain relative paths")
    (license (list license:expat license:asl2.0))))

(define-public rust-open-1
  (package
    (name "rust-open")
    (version "1.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "open" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "00828zcxdy3r38inz48jgnszgvqgi1a3bi2rrhij86mqsqq7msnw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/Byron/open-rs")
    (synopsis
      "Open a path or URL using the program configured on the system")
    (description
      "Open a path or URL using the program configured on the system")
    (license license:expat)))

(define-public rust-proc-macro-crate-1
  (package
    (name "rust-proc-macro-crate")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "proc-macro-crate" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "14pzgkpnlzq6y7yc749h2lwd1mv44min4iszjk2znmi1yqfvvza1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-thiserror" ,rust-thiserror-1)
         ("rust-toml" ,rust-toml-0.5))))
    (home-page
      "https://github.com/bkchr/proc-macro-crate")
    (synopsis
      "Replacement for crate (macro_rules keyword) in proc-macros
")
    (description
      "Replacement for crate (macro_rules keyword) in proc-macros
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-zvariant-derive-2
  (package
    (name "rust-zvariant-derive")
    (version "2.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zvariant_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1sbhic5pdv03qx6ci4zwpn1llk92pmwpr2l7c6ninbch7naxgwac"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-crate"
          ,rust-proc-macro-crate-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://gitlab.freedesktop.org/dbus/zbus/")
    (synopsis "D-Bus & GVariant encoding & decoding")
    (description
      "D-Bus & GVariant encoding & decoding")
    (license license:expat)))

(define-public rust-zvariant-2
  (package
    (name "rust-zvariant")
    (version "2.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zvariant" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "08j741ipsnwkxbk3knj03acm0z8lh6rx7pfs7xr0117aq30hz6ps"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayvec" ,rust-arrayvec-0.5)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-enumflags2" ,rust-enumflags2-0.6)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-bytes" ,rust-serde-bytes-0.11)
         ("rust-static-assertions"
          ,rust-static-assertions-1)
         ("rust-zvariant-derive" ,rust-zvariant-derive-2))))
    (home-page
      "https://gitlab.freedesktop.org/dbus/zbus/")
    (synopsis "D-Bus & GVariant encoding & decoding")
    (description
      "D-Bus & GVariant encoding & decoding")
    (license license:expat)))

(define-public rust-zbus-macros-1
  (package
    (name "rust-zbus-macros")
    (version "1.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zbus_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "14sziniysx55501jq1fiimg93c3d8hydpdcjkfw831p455hcb0m4"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro-crate"
          ,rust-proc-macro-crate-0.1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://gitlab.freedesktop.org/dbus/zbus/")
    (synopsis "proc-macros for zbus")
    (description "Proc-macros for zbus")
    (license license:expat)))

(define-public rust-serde-xml-rs-0.4
  (package
    (name "rust-serde-xml-rs")
    (version "0.4.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "serde-xml-rs" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1ykx1xkfd59gf0ijnp93xhpd457xy4zi8xv2hrr0ikvcd6h1pgzh"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-log" ,rust-log-0.4)
         ("rust-serde" ,rust-serde-1)
         ("rust-thiserror" ,rust-thiserror-1)
         ("rust-xml-rs" ,rust-xml-rs-0.8))))
    (home-page
      "https://github.com/RReverser/serde-xml-rs")
    (synopsis
      "xml-rs based deserializer for Serde (compatible with 0.9+)")
    (description
      "Xml-rs based deserializer for Serde (compatible with 0.9+)")
    (license license:expat)))

(define-public rust-enumflags2-derive-0.6
  (package
    (name "rust-enumflags2-derive")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "enumflags2_derive" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1kkcwi4n76bi1c16ms00dyk4d393gdf29kpr4k9zsn5z7m7fjvll"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page
      "https://github.com/NieDzejkob/enumflags2")
    (synopsis
      "Do not use directly, use the reexport in the `enumflags2` crate.
This allows for better compatibility across versions.")
    (description
      "Do not use directly, use the reexport in the `enumflags2` crate.
This allows for better compatibility across versions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-enumflags2-0.6
  (package
    (name "rust-enumflags2")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "enumflags2" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "182xd6cxxmadx1axnz6x73d12pzgwkc712zq2lxd4z1k48lxij43"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-enumflags2-derive"
          ,rust-enumflags2-derive-0.6)
         ("rust-serde" ,rust-serde-1))))
    (home-page
      "https://github.com/NieDzejkob/enumflags2")
    (synopsis "Enum-based bit flags")
    (description "Enum-based bit flags")
    (license (list license:expat license:asl2.0))))

(define-public rust-zbus-1
  (package
    (name "rust-zbus")
    (version "1.9.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "zbus" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1bcx5vf75iscgfdn3pszkbr6n20pvddry24lnws4xb53g71sq9i3"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-async-io" ,rust-async-io-1)
         ("rust-byteorder" ,rust-byteorder-1)
         ("rust-derivative" ,rust-derivative-2)
         ("rust-enumflags2" ,rust-enumflags2-0.6)
         ("rust-fastrand" ,rust-fastrand-1)
         ("rust-futures" ,rust-futures-0.3)
         ("rust-nb-connect" ,rust-nb-connect-1)
         ("rust-nix" ,rust-nix-0.17)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-polling" ,rust-polling-2)
         ("rust-scoped-tls" ,rust-scoped-tls-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-xml-rs" ,rust-serde-xml-rs-0.4)
         ("rust-serde-repr" ,rust-serde-repr-0.1)
         ("rust-zbus-macros" ,rust-zbus-macros-1)
         ("rust-zvariant" ,rust-zvariant-2))))
    (home-page
      "https://gitlab.freedesktop.org/dbus/zbus/")
    (synopsis "API for D-Bus communication")
    (description "API for D-Bus communication")
    (license license:expat)))

(define-public rust-xml-rs-0.6
  (package
    (name "rust-xml-rs")
    (version "0.6.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "xml-rs" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "18g7krn8zx8ifml83w91w2hvw437j5q3vaw4cvx3kryccj5860pl"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1))))
    (home-page "https://github.com/netvl/xml-rs")
    (synopsis "An XML library in pure Rust")
    (description "An XML library in pure Rust")
    (license license:expat)))

(define-public rust-winrt-0.4
  (package
    (name "rust-winrt")
    (version "0.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winrt" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "13dl7i2w2mqc6s0wj38s4wkpkp10gvkjwb22bbf87c125slcnc3y"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://github.com/microsoft/windows-rs")
    (synopsis "Windows Runtime language projection")
    (description
      "Windows Runtime language projection")
    (license (list license:expat license:asl2.0))))

(define-public rust-strum-macros-0.8
  (package
    (name "rust-strum-macros")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum_macros" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1f3xv8x1f93kv2wi24h9gqg8446hw894914f28xsn37bg045k11k"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-quote" ,rust-quote-0.3)
         ("rust-syn" ,rust-syn-0.11))))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-strum-0.8
  (package
    (name "rust-strum")
    (version "0.8.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "strum" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1np7ymlq2402l3i6ljxgfdmxxf5akp927zkzahg08zji1xry99jc"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/Peternator7/strum")
    (synopsis
      "Helpful macros for working with enums and strings")
    (description
      "Helpful macros for working with enums and strings")
    (license license:expat)))

(define-public rust-winrt-notification-0.2
  (package
    (name "rust-winrt-notification")
    (version "0.2.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "winrt-notification" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1i013b5zwx9y3hlwnwdx6cr3fy4bpahz4kdlva14d2k8h6r0wyap"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-strum" ,rust-strum-0.8)
         ("rust-strum-macros" ,rust-strum-macros-0.8)
         ("rust-winapi" ,rust-winapi-0.3)
         ("rust-winrt" ,rust-winrt-0.4)
         ("rust-xml-rs" ,rust-xml-rs-0.6))))
    (home-page
      "https://github.com/allenbenz/winrt-notification")
    (synopsis
      "An incomplete wrapper over the WinRT toast api")
    (description
      "An incomplete wrapper over the WinRT toast api")
    (license license:expat)))

(define-public rust-mac-notification-sys-0.3
  (package
    (name "rust-mac-notification-sys")
    (version "0.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "mac-notification-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0xnsrr4102rbka57198v7gkfhivl54a456ax765x7758m5qnpyrx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-dirs" ,rust-dirs-1)
         ("rust-objc-foundation"
          ,rust-objc-foundation-0.1))))
    (home-page
      "https://github.com/h4llow3En/mac-notification-sys")
    (synopsis
      "Thin wrapper around macOS Notifications.")
    (description
      "Thin wrapper around macOS Notifications.")
    (license license:expat)))

(define-public rust-libdbus-sys-0.2
  (package
    (name "rust-libdbus-sys")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libdbus-sys" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1w06ycq2mw8zfp9j73macgdl8d2881bnxbzdyyxys90ljyya64nw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/diwic/dbus-rs")
    (synopsis "FFI bindings to libdbus.")
    (description "FFI bindings to libdbus.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-dbus-0.9
  (package
    (name "rust-dbus")
    (version "0.9.3")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "dbus" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1f9hsh7cma2w6dz0h4f466lql0xkfdf8fb7xbgds5cm31asjp1n8"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-futures-channel"
          ,rust-futures-channel-0.3)
         ("rust-futures-executor"
          ,rust-futures-executor-0.3)
         ("rust-futures-util" ,rust-futures-util-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libdbus-sys" ,rust-libdbus-sys-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/diwic/dbus-rs")
    (synopsis
      "Bindings to D-Bus, which is a bus commonly used on
Linux for inter-process communication.")
    (description
      "Bindings to D-Bus, which is a bus commonly used on
Linux for inter-process communication.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-notify-rust-4
  (package
    (name "rust-notify-rust")
    (version "4.5.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "notify-rust" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0iq2wwyfn4rhrxy1b3h8hadvpcghay1k33c26l6bcs3jrm1afb1a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-chrono" ,rust-chrono-0.4)
         ("rust-dbus" ,rust-dbus-0.9)
         ("rust-image" ,rust-image-0.23)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-mac-notification-sys"
          ,rust-mac-notification-sys-0.3)
         ("rust-serde" ,rust-serde-1)
         ("rust-winrt-notification"
          ,rust-winrt-notification-0.2)
         ("rust-zbus" ,rust-zbus-1)
         ("rust-zvariant" ,rust-zvariant-2)
         ("rust-zvariant-derive" ,rust-zvariant-derive-2))))
    (home-page
      "https://github.com/hoodie/notify-rust")
    (synopsis
      "Show desktop notifications (linux, bsd, mac). Pure Rust dbus client and server.")
    (description
      "Show desktop notifications (linux, bsd, mac).  Pure Rust dbus client and server.")
    (license (list license:expat license:asl2.0))))

(define-public rust-memoffset-0.6
  (package
    (name "rust-memoffset")
    (version "0.6.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "memoffset" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1yfx2v8kmkhr2d4gwk8ghihdwg73vapn3vvp0im06f0kgx8crb2r"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1))))
    (home-page "https://github.com/Gilnaa/memoffset")
    (synopsis
      "offset_of functionality for Rust structs.")
    (description
      "Offset_of functionality for Rust structs.")
    (license license:expat)))

(define-public rust-nix-0.21
  (package
    (name "rust-nix")
    (version "0.21.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nix" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1isfgr239sxvkcjhcp08rz2nqi4s6w5ik2l2m183ldlxqkz2hdsw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cc" ,rust-cc-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-memoffset" ,rust-memoffset-0.6))))
    (home-page "https://github.com/nix-rust/nix")
    (synopsis "Rust friendly bindings to *nix APIs")
    (description
      "Rust friendly bindings to *nix APIs")
    (license license:expat)))

(define-public rust-indexmap-1.7
  (package
    (name "rust-indexmap")
    (version "1.7.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "indexmap" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "19b2zwfajhsfcgny0clv8y4jppy704znfhv8nv2dw9a18l2kcqxw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-autocfg" ,rust-autocfg-1)
         ("rust-hashbrown" ,rust-hashbrown-0.11)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/bluss/indexmap")
    (synopsis
      "A hash table with consistent order and fast iteration.

The indexmap is a hash table where the iteration order of the key-value
pairs is independent of the hash values of the keys. It has the usual
hash table functionality, it preserves insertion order except after
removals, and it allows lookup of its elements by either hash table key
or numerical index. A corresponding hash set type is also provided.

This crate was initially published under the name ordermap, but it was renamed to
indexmap.
")
    (description
      "This package provides a hash table with consistent order and fast iteration.

The indexmap is a hash table where the iteration order of the key-value
pairs is independent of the hash values of the keys.  It has the usual
hash table functionality, it preserves insertion order except after
removals, and it allows lookup of its elements by either hash table key
or numerical index.  A corresponding hash set type is also provided.

This crate was initially published under the name ordermap, but it was renamed to
indexmap.
")
    (license (list license:asl2.0 license:expat))))

(define-public rust-gethostname-0.2
  (package
    (name "rust-gethostname")
    (version "0.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "gethostname" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0a609j9dhk816il2f2a01avvi5sqzxh0p38nxwrja7dcpybf54p6"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-libc" ,rust-libc-0.2)
         ("rust-winapi" ,rust-winapi-0.3))))
    (home-page
      "https://github.com/lunaryorn/gethostname.rs")
    (synopsis "gethostname for all platforms")
    (description "Gethostname for all platforms")
    (license license:asl2.0)))

(define-public rust-byte-unit-4
  (package
    (name "rust-byte-unit")
    (version "4.0.12")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "byte-unit" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "1n5w327g55ly5r4yjh71rhv2ifw615xdxv8d2rj5nxsbxgk9fc86"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-serde" ,rust-serde-1)
         ("rust-utf8-width" ,rust-utf8-width-0.1))))
    (home-page "https://magiclen.org/byte-unit")
    (synopsis
      "A library for interaction with units of bytes.")
    (description
      "This package provides a library for interaction with units of bytes.")
    (license license:expat)))

(define-public rust-wildmatch-1
  (package
    (name "rust-wildmatch")
    (version "1.1.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "wildmatch" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "02i7qwjy1rkhzp80v9i9khzf09rhr4d534wcap7i6hfkc9gvji3z"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page
      "https://github.com/becheran/wildmatch")
    (synopsis
      "Simple string matching  with questionmark and star wildcard operator.")
    (description
      "Simple string matching  with questionmark and star wildcard operator.")
    (license license:expat)))

(define-public rust-attohttpc-0.17
  (package
    (name "rust-attohttpc")
    (version "0.17.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "attohttpc" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0bg0d95smcd5nrp5d3h1c3w1vlizdrvnq412jcrjn9jpahqdm2ws"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-encoding-rs" ,rust-encoding-rs-0.8)
         ("rust-encoding-rs-io" ,rust-encoding-rs-io-0.1)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-http" ,rust-http-0.2)
         ("rust-log" ,rust-log-0.4)
         ("rust-mime" ,rust-mime-0.3)
         ("rust-multipart" ,rust-multipart-0.17)
         ("rust-native-tls" ,rust-native-tls-0.2)
         ("rust-openssl" ,rust-openssl-0.10)
         ("rust-rustls" ,rust-rustls-0.18)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-serde-urlencoded"
          ,rust-serde-urlencoded-0.6)
         ("rust-url" ,rust-url-2)
         ("rust-webpki" ,rust-webpki-0.21)
         ("rust-webpki-roots" ,rust-webpki-roots-0.19)
         ("rust-wildmatch" ,rust-wildmatch-1))))
    (home-page "https://github.com/sbstp/attohttpc")
    (synopsis "Small and lightweight HTTP client")
    (description "Small and lightweight HTTP client")
    (license license:mpl2.0)))

(define-public rust-vte-0.10
  (package
    (name "rust-vte")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "vte" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "10srmy9ssircrwsb5lpx3fbhx71460j77kvz0krz38jcmf9fdg3c"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arrayvec" ,rust-arrayvec-0.5)
         ("rust-utf8parse" ,rust-utf8parse-0.2)
         ("rust-vte-generate-state-changes"
          ,rust-vte-generate-state-changes-0.1))))
    (home-page "https://github.com/alacritty/vte")
    (synopsis "Parser for implementing terminal emulators")
    (description "Parser for implementing terminal emulators")
    (license (list license:asl2.0 license:expat))))

(define-public rust-fancy-regex-0.7
  (package
    (name "rust-fancy-regex")
    (version "0.7.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "fancy-regex" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1krwc8mbj8zv4ahvh3lqkmfxf38cg79ya02by19fn4jil1h8aswx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bit-set" ,rust-bit-set-0.5) ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/fancy-regex/fancy-regex")
    (synopsis
      "An implementation of regexes, supporting a relatively rich set
of features, including backreferences and look-around.")
    (description
      "An implementation of regexes, supporting a relatively rich set
of features, including backreferences and look-around.")
    (license license:expat)))

(define-public rust-syntect-4
  (package
    (name "rust-syntect")
    (version "4.6.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "syntect" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0cd0rbi5r83p9pqph0gyj3vgr18ihh54amv9dvh0pvl0prdq284b"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bincode" ,rust-bincode-1)
         ("rust-bitflags" ,rust-bitflags-1)
         ("rust-fancy-regex" ,rust-fancy-regex-0.7)
         ("rust-flate2" ,rust-flate2-1)
         ("rust-fnv" ,rust-fnv-1)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-lazycell" ,rust-lazycell-1)
         ("rust-onig" ,rust-onig-6)
         ("rust-plist" ,rust-plist-1)
         ("rust-regex-syntax" ,rust-regex-syntax-0.6)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-walkdir" ,rust-walkdir-2)
         ("rust-yaml-rust" ,rust-yaml-rust-0.4))))
    (home-page "https://github.com/trishume/syntect")
    (synopsis
      "Library for high quality syntax highlighting and code intelligence
using Sublime Text's grammars")
    (description
      "Library for high quality syntax highlighting and code intelligence
using Sublime Text's grammars")
    (license license:expat)))

(define-public rust-structopt-derive-0.4
  (package
    (name "rust-structopt-derive")
    (version "0.4.18")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "structopt-derive" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1q5gcigmvw0cinjxzpyrkflliq5r1ivljmrvfrl3phcwgwraxdfw"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-heck" ,rust-heck-0.3)
         ("rust-proc-macro-error" ,rust-proc-macro-error-1)
         ("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/TeXitoi/structopt")
    (synopsis
      "Parse command line argument by defining a struct, derive crate.")
    (description
      "Parse command line argument by defining a struct, derive crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-paw-raw-1
  (package
    (name "rust-paw-raw")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "paw-raw" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1wk76ipp34gjh42vivmgdkb2rgr26gwhn34gk7z5l378ixk5j2vz"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/rust-cli/paw")
    (synopsis "Traits to implement custom Paw implementations")
    (description "Traits to implement custom Paw implementations")
    (license (list license:expat license:asl2.0))))

(define-public rust-paw-attributes-1
  (package
    (name "rust-paw-attributes")
    (version "1.0.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "paw-attributes" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0fda1v7y5pfmg8d2v7m0pyvif6c44qjz914jjn718pdyclrmhd8g"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-proc-macro2" ,rust-proc-macro2-1)
         ("rust-quote" ,rust-quote-1)
         ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rust-cli/paw")
    (synopsis "Proc Macro attributes for the Paw crate.")
    (description "Proc Macro attributes for the Paw crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-paw-1
  (package
    (name "rust-paw")
    (version "1.0.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "paw" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1sc481y42rb08hmww525m4539ppl8k0w14kwxp13vg2dasdzrh09"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-paw-attributes" ,rust-paw-attributes-1)
         ("rust-paw-raw" ,rust-paw-raw-1))))
    (home-page "https://github.com/rust-cli/paw")
    (synopsis "CLI argument parser.")
    (description "CLI argument parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-structopt-0.3
  (package
    (name "rust-structopt")
    (version "0.3.25")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "structopt" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0z68cia8564b01fzvc6yrhwnlphqcmfc3jgc8317bah28a7pifa0"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-clap" ,rust-clap-2)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-paw" ,rust-paw-1)
         ("rust-structopt-derive" ,rust-structopt-derive-0.4))))
    (home-page "https://github.com/TeXitoi/structopt")
    (synopsis "Parse command line argument by defining a struct.")
    (description "Parse command line argument by defining a struct.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-smol-str-0.1
  (package
    (name "rust-smol-str")
    (version "0.1.21")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "smol_str" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gb14a85k6mzpn6s78flwvfl5vy1czsrzlwcgidy7k00wf1mrlb1"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-arbitrary" ,rust-arbitrary-1) ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rust-analyzer/smol_str")
    (synopsis "Small-string optimized string type with O(1) clone")
    (description "Small-string optimized string type with O(1) clone")
    (license (list license:expat license:asl2.0))))

(define-public rust-camino-1
  (package
    (name "rust-camino")
    (version "1.0.5")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "camino" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0avbz0vh6l9ggf1hd6l4q3zxgw5qni0ni94a43i48sdzv5h45msj"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/withoutboats/camino")
    (synopsis "UTF-8 paths")
    (description "UTF-8 paths")
    (license (list license:expat license:asl2.0))))

(define-public rust-itertools-0.10
  (package
    (name "rust-itertools")
    (version "0.10.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "itertools" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1bsyxnm20x05rwc5qskrqy4cfswrcadzlwc26dkqml6hz64vipb9"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build? #t #:cargo-inputs (("rust-either" ,rust-either-1))))
    (home-page "https://github.com/rust-itertools/itertools")
    (synopsis
      "Extra iterator adaptors, iterator methods, free functions, and macros.")
    (description
      "Extra iterator adaptors, iterator methods, free functions, and macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-libgit2-sys-0.12
  (package
    (name "rust-libgit2-sys")
    (version "0.12.24+1.3.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "libgit2-sys" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0b0ms9rm6cknhm5v5ysxb0mgz1fxrwm3qjzmm24v4vzhxqhn1gfx"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-cc" ,rust-cc-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libssh2-sys" ,rust-libssh2-sys-0.2)
         ("rust-libz-sys" ,rust-libz-sys-1)
         ("rust-openssl-sys" ,rust-openssl-sys-0.9)
         ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/rust-lang/git2-rs")
    (synopsis "Native bindings to the libgit2 library")
    (description "Native bindings to the libgit2 library")
    (license (list license:expat license:asl2.0))))

(define-public rust-git2-0.13
  (package
    (name "rust-git2")
    (version "0.13.23")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "git2" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0037xlj7ymsd2xdd9vhwvc6l4dqdawba0kj3wkcsklr5569mg01a"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-libgit2-sys" ,rust-libgit2-sys-0.12)
         ("rust-log" ,rust-log-0.4)
         ("rust-openssl-probe" ,rust-openssl-probe-0.1)
         ("rust-openssl-sys" ,rust-openssl-sys-0.9)
         ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/rust-lang/git2-rs")
    (synopsis
      "Bindings to libgit2 for interoperating with git repositories. This library is
both threadsafe and memory safe and allows both reading and writing git
repositories.
")
    (description
      "Bindings to libgit2 for interoperating with git repositories.  This library is
both threadsafe and memory safe and allows both reading and writing git
repositories.
")
    (license (list license:expat license:asl2.0))))

(define-public rust-error-chain-0.12
  (package
    (name "rust-error-chain")
    (version "0.12.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "error-chain" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1z6y5isg0il93jp287sv7pn10i4wrkik2cpyk376wl61rawhcbrd"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-backtrace" ,rust-backtrace-0.3)
         ("rust-version-check" ,rust-version-check-0.9))))
    (home-page "https://github.com/rust-lang-nursery/error-chain")
    (synopsis "Yet another error boilerplate library.")
    (description "Yet another error boilerplate library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-nix-0.23
  (package
    (name "rust-nix")
    (version "0.23.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "nix" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "121iqjqk9k4m892z5m41czh0q1zraysmzxhbpzvq56n3wk1c41gk"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-bitflags" ,rust-bitflags-1)
         ("rust-cc" ,rust-cc-1)
         ("rust-cfg-if" ,rust-cfg-if-1)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-memoffset" ,rust-memoffset-0.6))))
    (home-page "https://github.com/nix-rust/nix")
    (synopsis "Rust friendly bindings to *nix APIs")
    (description "Rust friendly bindings to *nix APIs")
    (license license:expat)))

(define-public rust-ctrlc-3
  (package
    (name "rust-ctrlc")
    (version "3.2.1")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ctrlc" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "1gy73qwcchh802nc4vdr5cv16nnq1fr3wwkd6jih736wzznnr751"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-nix" ,rust-nix-0.23) ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/Detegr/rust-ctrlc")
    (synopsis "Easy Ctrl-C handler for Rust projects")
    (description "Easy Ctrl-C handler for Rust projects")
    (license (list license:expat license:asl2.0))))

(define-public rust-console-0.15
  (package
    (name "rust-console")
    (version "0.15.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "console" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0c9wif28i3q231gvjprqdq1glmgmmcdxpmxcwk1p0jx45k9k52x2"))))
    (build-system cargo-build-system)
    (arguments
      `(#:skip-build?
        #t
        #:cargo-inputs
        (("rust-encode-unicode" ,rust-encode-unicode-0.3)
         ("rust-libc" ,rust-libc-0.2)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-terminal-size" ,rust-terminal-size-0.1)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-winapi" ,rust-winapi-0.3)
         ("rust-winapi-util" ,rust-winapi-util-0.1))))
    (home-page "https://github.com/mitsuhiko/console")
    (synopsis "A terminal and console abstraction for Rust")
    (description
      "This package provides a terminal and console abstraction for Rust")
    (license license:expat)))

(define-public rust-bytelines-2
  (package
    (name "rust-bytelines")
    (version "2.2.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bytelines" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0pv1dwbbqws84v31f64g6b3nxi0jbhi59cipwpg6651ys504w7kr"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://github.com/whitfin/bytelines")
    (synopsis "Read input lines as byte slices for high efficiency")
    (description "Read input lines as byte slices for high efficiency")
    (license license:expat)))

(define-public rust-box-drawing-0.1
  (package
    (name "rust-box-drawing")
    (version "0.1.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "box_drawing" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0jx4rrxy4xmgmplmgl398vrng67sfl8qny7n7d91fyw6zpaxh9za"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t))
    (home-page "https://gitlab.com/chronos.alfa/box_drawing.git")
    (synopsis
      "A very simple library containing constants for UTF-8 box drawing.")
    (description
      "This package provides a very simple library containing constants for
UTF-8 box drawing.")
    (license license:expat)))

(define-public rust-ansi-colours-1
  (package
    (name "rust-ansi-colours")
    (version "1.0.4")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "ansi_colours" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "13yjl5ywszm46nsc25xkvas64pnxrf68yv9wrgqxk6m471hzpqk0"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/mina86/ansi_colours")
    (synopsis "True-colour ??\x86\x94 ANSI terminal palette converter")
    (description "True-colour ??\x86\x94 ANSI terminal palette converter")
    (license license:lgpl3+)))

(define-public rust-bitflags-1.3
  (package
    (name "rust-bitflags")
    (version "1.3.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "bitflags" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))))
    (build-system cargo-build-system)
    (arguments
      `(#:cargo-inputs
        (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
         ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))
        #:cargo-development-inputs
        (("rust-rustversion" ,rust-rustversion-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-derive" ,rust-serde-derive-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-trybuild" ,rust-trybuild-1)
         ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/bitflags/bitflags")
    (synopsis "A macro to generate structures which behave like bitflags.")
    (description
      "This package provides a macro to generate structures which behave
like bitflags.")
    (license (list license:expat license:asl2.0))))

(define-public rust-xdg-2
  (package
    (name "rust-xdg")
    (version "2.4.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "xdg" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "00sqvl6v0sjdrrmyk2671sshnjlbjdwgb1lw0f3jchbhijazw8rs"))))
    (build-system cargo-build-system)
    (arguments `(#:skip-build? #t #:cargo-inputs (("rust-dirs" ,rust-dirs-3))))
    (home-page "https://github.com/whitequark/rust-xdg")
    (synopsis
      "A library for storing and retrieving files according to XDG Base
Directory specification")
    (description
      "This package provides a library for storing and retrieving files
according to XDG Base Directory specification")
    (license (list license:asl2.0 license:expat))))

(define-public rust-starship-0.56
  (package
    (name "starship")
    (version "0.56.0")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "starship" version))
        (file-name
          (string-append name "-" version ".tar.gz"))
        (sha256
          (base32
            "0ggqdrmb2jg58pg5ysbm4gv5v359js8kqxsd1vmnzgdxj1v0kkjn"))))
    (build-system cargo-build-system)
    (arguments
      `(#:tests? #f
        #:cargo-inputs
        (("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-attohttpc" ,rust-attohttpc-0.17)
         ("rust-battery" ,rust-battery-0.7)
         ("rust-byte-unit" ,rust-byte-unit-4)
         ("rust-chrono" ,rust-chrono-0.4)
         ("rust-clap" ,rust-clap-2)
         ("rust-directories-next"
          ,rust-directories-next-2)
         ("rust-gethostname" ,rust-gethostname-0.2)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-indexmap" ,rust-indexmap-1.7)
         ("rust-log" ,rust-log-0.4)
         ("rust-native-tls" ,rust-native-tls-0.2)
         ("rust-nix" ,rust-nix-0.21)
         ("rust-notify-rust" ,rust-notify-rust-4)
         ("rust-once-cell" ,rust-once-cell-1)
         ("rust-open" ,rust-open-1)
         ("rust-os-info" ,rust-os-info-3)
         ("rust-path-slash" ,rust-path-slash-0.1)
         ("rust-pest" ,rust-pest-2)
         ("rust-pest-derive" ,rust-pest-derive-2)
         ("rust-process-control" ,rust-process-control-3)
         ("rust-quick-xml" ,rust-quick-xml-0.22)
         ("rust-rand" ,rust-rand-0.8)
         ("rust-rayon" ,rust-rayon-1)
         ("rust-regex" ,rust-regex-1)
         ("rust-rust-ini" ,rust-rust-ini-0.17)
         ("rust-semver" ,rust-semver-1)
         ("rust-serde" ,rust-serde-1)
         ("rust-serde-json" ,rust-serde-json-1)
         ("rust-shadow-rs" ,rust-shadow-rs-0.6)
         ("rust-shadow-rs" ,rust-shadow-rs-0.6)
         ("rust-shell-words" ,rust-shell-words-1)
         ("rust-starship-module-config-derive"
          ,rust-starship-module-config-derive-0.2)
         ("rust-strsim" ,rust-strsim-0.10)
         ("rust-sys-info" ,rust-sys-info-0.9)
         ("rust-term-size" ,rust-term-size-0.3)
         ("rust-toml" ,rust-toml-0.5)
         ("rust-unicode-segmentation"
          ,rust-unicode-segmentation-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-urlencoding" ,rust-urlencoding-1)
         ("rust-versions" ,rust-versions-3)
         ("rust-which" ,rust-which-4)
         ("rust-winapi" ,rust-winapi-0.3)
         ("rust-yaml-rust" ,rust-yaml-rust-0.4))
        #:cargo-development-inputs
        (("rust-mockall" ,rust-mockall-0.10)
         ("rust-tempfile" ,rust-tempfile-3))))
    (native-inputs
      (list pkg-config))
    (inputs
      (list openssl zlib))
    (home-page "https://starship.rs")
    (synopsis
      "The minimal, blazing-fast, and infinitely customizable prompt for
any shell! ??\x98\x84??\x9f\x8c\x8c????\x8f")
    (description
      "The minimal, blazing-fast, and infinitely customizable prompt for
any shell! ??\x98\x84??\x9f\x8c\x8c????\x8f")
    (license license:isc)))

(define-public rust-git-delta-0.9
  (package
    (name "rust-git-delta")
    (version "0.9.2")
    (source
      (origin
        (method url-fetch)
        (uri (crate-uri "git-delta" version))
        (file-name (string-append name "-" version ".tar.gz"))
        (sha256
          (base32 "0mv5lpwk1g1fd939f9q28v5w22pbxq99i8w51xhjiy54n2k1a44n"))))
    (build-system cargo-build-system)
    (arguments
      ; rust-bitflags-1.3.2 requires 1.46 (if in const fn)
      ; rust-git-delta requires 1.47 (inner_deref)
      `(#:cargo-inputs
        (("rust-ansi-colours" ,rust-ansi-colours-1)
         ("rust-ansi-term" ,rust-ansi-term-0.12)
         ("rust-atty" ,rust-atty-0.2)
         ("rust-bitflags" ,rust-bitflags-1.3)
         ("rust-box-drawing" ,rust-box-drawing-0.1)
         ("rust-bytelines" ,rust-bytelines-2)
         ("rust-console" ,rust-console-0.15)
         ("rust-ctrlc" ,rust-ctrlc-3)
         ("rust-dirs-next" ,rust-dirs-next-2)
         ("rust-error-chain" ,rust-error-chain-0.12)
         ("rust-git2" ,rust-git2-0.13)
         ("rust-grep-cli" ,rust-grep-cli-0.1)
         ("rust-itertools" ,rust-itertools-0.10)
         ("rust-lazy-static" ,rust-lazy-static-1)
         ("rust-pathdiff" ,rust-pathdiff-0.2)
         ("rust-regex" ,rust-regex-1)
         ("rust-shell-words" ,rust-shell-words-1)
         ("rust-smol-str" ,rust-smol-str-0.1)
         ("rust-structopt" ,rust-structopt-0.3)
         ("rust-syntect" ,rust-syntect-4)
         ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
         ("rust-unicode-width" ,rust-unicode-width-0.1)
         ("rust-vte" ,rust-vte-0.10)
         ("rust-xdg" ,rust-xdg-2))))
      (inputs
       (list zlib))
      (native-inputs
        (list git)) ;; For the tests
    (home-page "https://github.com/dandavison/delta")
    (synopsis "A syntax-highlighting pager for git")
    (description "This package provides a syntax-highlighting pager
for git.  The executable is installed as @code{delta}.")
    (license license:expat)))
