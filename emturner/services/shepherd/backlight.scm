(define-module (emturner services shepherd backlight)
  #:use-module (gnu services shepherd))

(define intel-brightness-dir "/sys/class/backlight/intel_backlight/")

(define intel-brightness-file
  (string-append intel-brightness-dir "brightness"))

(define intel-max-brightness-file
  (string-append intel-brightness-dir "max_brightness"))

(define intel-max-brightness '())

(define intel-min-brightness 1)

;; 20% compared to current
(define brightness-step
  (lambda (current)
    (ceiling (/ current 5))))

(define read-brightness-file
  (lambda (path)
    (let ()
      (define file (open-input-file path))
      (define brightness (read file))
      (close file)
      brightness)))

(define update-intel-brightness
  (lambda (brightness)
    (if (integer? brightness)
    (let ()
      (define file (open-output-file intel-brightness-file))
          (write brightness file)
          (close file)))))

(define get-current-intel-brightness
  (lambda ()
    (read-brightness-file intel-brightness-file)))

(define-public intel-backlight-service
  (shepherd-service
    #:docstring "Increase or decrease intel backlight brightness"
    #:provides '(backlight)
    #:start (lambda ()
          (let ()
                (define brightness (read-brightness-file intel-max-brightness-file))
            (set! intel-max-brightness brightness)
            (integer? intel-max-brightness)))
    #:respawn? #f
    #:actions (make-actions
            (increase
              (lambda (running)
            (if running
                (let ()
                  (define current (get-current-intel-brightness))
                  (define step (brightness-step current))
                  (define new (+ current step))
                  (update-brightness (min new intel-max-brightness))))))
            (decrease
              (lambda (running)
            (if running
                (let ()
                  (define current (get-current-intel-brightness))
                  (define step (brightness-step current))
                  (define new (- current step))
                  (update-brightness (max new intel-min-brightness))))))
            (min
              (lambda (running)
            (if running
                (let ()
                  (update-brightness intel-min-brightness)))))
            (max
              (lambda (running)
            (if running
                (let ()
                  (update-brightness intel-max-brightness))))))))
