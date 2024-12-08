(* Wir beginnen mit der Definition des Theorems *)
Theorem impl_intro : forall P Q : Prop, P -> (Q -> P).
Proof.
  (* Wir führen die Hypothesen P und Q in den Kontext ein *)
  intros P Q HP HQ.
  (* Wir zeigen, dass P gilt, wenn wir HP haben *)
  exact HP. (* Wir verwenden die Hypothese HP, um P zu beweisen *)
Qed.
