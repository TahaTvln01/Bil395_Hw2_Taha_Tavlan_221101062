(define (calculator)
  (display "Scheme Calculator. Type (exit) to quit.\n")
  (let loop ()
    (display "> ")
    (let ((input (read)))
      (if (equal? input 'exit)
          (display "\n")
          (begin
            (display "Result: ")
            (display (eval input (interaction-environment)))
            (newline)
            (loop))))))

(calculator)
