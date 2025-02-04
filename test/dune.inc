(rule
 (targets pascal1.output)
 (deps (source_tree .))
 (action
   (with-outputs-to %{targets}
      (with-accepted-exit-codes
       (or :standard 125)
       (system "%{bin:lap2324P1} 1")))))

(rule
 (alias runtest)
 (action (diff %{dep:pascal1.expected} %{dep:pascal1.output})))

(rule
 (targets pascal2.output)
 (deps (source_tree .))
 (action
   (with-outputs-to %{targets}
      (with-accepted-exit-codes
       (or :standard 125)
       (system "%{bin:lap2324P1} 2")))))

(rule
 (alias runtest)
 (action (diff %{dep:pascal2.expected} %{dep:pascal2.output})))

(rule
 (targets pascal3.output)
 (deps (source_tree .))
 (action
   (with-outputs-to %{targets}
      (with-accepted-exit-codes
       (or :standard 125)
       (system "%{bin:lap2324P1} 3")))))

(rule
 (alias runtest)
 (action (diff %{dep:pascal3.expected} %{dep:pascal3.output})))

(rule
 (targets pascal10.output)
 (deps (source_tree .))
 (action
   (with-outputs-to %{targets}
      (with-accepted-exit-codes
       (or :standard 125)
       (system "%{bin:lap2324P1} 10")))))

(rule
 (alias runtest)
 (action (diff %{dep:pascal10.expected} %{dep:pascal10.output})))

(rule
 (targets pascal11.output)
 (deps (source_tree .))
 (action
   (with-outputs-to %{targets}
      (with-accepted-exit-codes
       (or :standard 125)
       (system "%{bin:lap2324P1} 11")))))

(rule
 (alias runtest)
 (action (diff %{dep:pascal11.expected} %{dep:pascal11.output})))
