#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

datatype fixed (a:t0p, int) = {n:nat} fixed (a,n)

fun {a:t0p} eq_elt_elt (x: a, y: a): bool // a generic equality

implement eq_elt_elt<int> (x, y) = g0int_eq (x, y)
implement eq_elt_elt<double> (x, y) = g0float_eq (x, y)


fn {a:t0p} neg {n:nat} (f: fixed(a,n)): fixed(a,n) =
	case+ f of fixed (a,n) => fixed (~a,n)
// fn {a:t0p} add {n:nat} (a: fixed(a,n), b: fixed(a,n)): fixed(a,n) = a + b
// fn {a:t0p} sub {n:nat} (a: fixed(a,n), b: fixed(a,n)): fixed(a,n) = a - b
// fn {a:t0p} mul {n:nat} (a: fixed(a,n), b: fixed(a,n)): fixed(a,n) = (a >> n) * (b >> n)
// fn {a:t0p} div {n:nat} (a: fixed(a,n), b: fixed(a,n)): fixed(a,n) = (a >> n) / (b >> n)

implement main0 () = ()