// RUN: %target-typecheck-verify-swift

let _: (_ v: inout @escaping () -> Void) -> ()
// expected-error@-1 {{inout expression is implicitly escaping by definition}}

func m(v: inout @escaping () -> Void) {}
// expected-error@-1 {{inout expression is implicitly escaping by definition}}
