// RUN: %target-typecheck-verify-swift

func testInoutEscaping() {
    let _: (_ v: inout @escaping () -> Void) -> ()
    // expected-error@-1 {{inout expression is implicitly escaping by definition}}
}
