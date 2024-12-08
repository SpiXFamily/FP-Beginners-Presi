(* Def: *)
Theorem impl_intro : forall P Q : Prop, P -> (Q -> P).
Proof.
  (* Hypothese: *)
  intros P Q HP HQ.
  (* Zeigen, dass P gilt, wenn wir HP haben *)
  exact HP. (* Verwenden die Hypothese HP, um P zu beweisen *)
Qed.
