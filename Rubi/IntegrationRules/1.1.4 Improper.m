
(* ::Section:: *)
(* 1.1.4 Improper *)

(* ::Subsection::Closed:: *)
(* 1.1.4.1 (a x^j+b x^n)^p *)
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (a*x^j + b*x^n)^(p + 1)/(b*(n - j)*(p + 1)*x^(n - 1)) /; FreeQ[{a, b, j, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && EqQ[j*p - n + j + 1, 0]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := -((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1)*x^(j - 1))) + ((n*p + n - j + 1)/(a*(n - j)*(p + 1)))*Int[(a*x^j + b*x^n)^(p + 1)/x^j, x] /; FreeQ[{a, b, j, n}, x] &&  !IntegerQ[p] && NeQ[n, j] && ILtQ[Simplify[(n*p + n - j + 1)/(n - j)], 0] && LtQ[p, -1]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (a*x^j + b*x^n)^(p + 1)/(a*(j*p + 1)*x^(j - 1)) - b*((n*p + n - j + 1)/(a*(j*p + 1)))*Int[x^(n - j)*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, j, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && ILtQ[Simplify[(n*p + n - j + 1)/(n - j)], 0] && NeQ[j*p + 1, 0]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := x*((a*x^j + b*x^n)^p/(j*p + 1)) - b*(n - j)*(p/(j*p + 1))*Int[x^n*(a*x^j + b*x^n)^(p - 1), x] /; FreeQ[{a, b}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && GtQ[p, 0] && LtQ[j*p + 1, 0]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := x*((a*x^j + b*x^n)^p/(n*p + 1)) + a*(n - j)*(p/(n*p + 1))*Int[x^j*(a*x^j + b*x^n)^(p - 1), x] /; FreeQ[{a, b}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && GtQ[p, 0] && NeQ[n*p + 1, 0]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (a*x^j + b*x^n)^(p + 1)/(b*(n - j)*(p + 1)*x^(n - 1)) - ((j*p - n + j + 1)/(b*(n - j)*(p + 1)))*Int[(a*x^j + b*x^n)^(p + 1)/x^n, x] /; FreeQ[{a, b}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && LtQ[p, -1] && GtQ[j*p + 1, n - j]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := -((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1)*x^(j - 1))) + ((n*p + n - j + 1)/(a*(n - j)*(p + 1)))*Int[(a*x^j + b*x^n)^(p + 1)/x^j, x] /; FreeQ[{a, b}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && LtQ[p, -1]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := x*((a*x^j + b*x^n)^p/(p*(n - j))) + a*Int[x^j*(a*x^j + b*x^n)^(p - 1), x] /; FreeQ[{a, b, j, n}, x] && IGtQ[p + 1/2, 0] && NeQ[n, j] && EqQ[Simplify[j*p + 1], 0]
Int[1/Sqrt[(a_.)*(x_)^2 + (b_.)*(x_)^(n_.)], x_Symbol] := (2/(2 - n))*Subst[Int[1/(1 - a*x^2), x], x, x/Sqrt[a*x^2 + b*x^n]] /; FreeQ[{a, b, n}, x] && NeQ[n, 2]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := -((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1)*x^(j - 1))) + ((n*p + n - j + 1)/(a*(n - j)*(p + 1)))*Int[(a*x^j + b*x^n)^(p + 1)/x^j, x] /; FreeQ[{a, b, j, n}, x] && ILtQ[p + 1/2, 0] && NeQ[n, j] && EqQ[Simplify[j*p + 1], 0]
Int[1/Sqrt[(a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.)], x_Symbol] := -2*(Sqrt[a*x^j + b*x^n]/(b*(n - 2)*x^(n - 1))) - a*((2*n - j - 2)/(b*(n - 2)))*Int[1/(x^(n - j)*Sqrt[a*x^j + b*x^n]), x] /; FreeQ[{a, b}, x] && LtQ[2*(n - 1), j, n]
Int[((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := ((a*x^j + b*x^n)^FracPart[p]/(x^(j*FracPart[p])*(a + b*x^(n - j))^FracPart[p]))*Int[x^(j*p)*(a + b*x^(n - j))^p, x] /; FreeQ[{a, b, j, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && PosQ[n - j]
Int[((a_.)*(u_)^(j_.) + (b_.)*(u_)^(n_.))^(p_), x_Symbol] := (1/Coefficient[u, x, 1])*Subst[Int[(a*x^j + b*x^n)^p, x], x, u] /; FreeQ[{a, b, j, n, p}, x] && LinearQ[u, x] && NeQ[u, x]

(* ::Subsection::Closed:: *)
(* 1.1.4.2 (c x)^m (a x^j+b x^n)^p *)
Int[(x_)^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := (1/n)*Subst[Int[(a*x^Simplify[j/n] + b*x)^p, x], x, x^n] /; FreeQ[{a, b, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && EqQ[Simplify[m - n + 1], 0]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (-c^(j - 1))*(c*x)^(m - j + 1)*((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1))) /; FreeQ[{a, b, c, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && EqQ[m + n*p + n - j + 1, 0] && (IntegerQ[j] || GtQ[c, 0])
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (-c^(j - 1))*(c*x)^(m - j + 1)*((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1))) + c^j*((m + n*p + n - j + 1)/(a*(n - j)*(p + 1)))*Int[(c*x)^(m - j)*(a*x^j + b*x^n)^(p + 1), x] /; FreeQ[{a, b, c, j, m, n}, x] &&  !IntegerQ[p] && NeQ[n, j] && ILtQ[Simplify[(m + n*p + n - j + 1)/(n - j)], 0] && LtQ[p, -1] && (IntegerQ[j] || GtQ[c, 0])
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := c^(j - 1)*(c*x)^(m - j + 1)*((a*x^j + b*x^n)^(p + 1)/(a*(m + j*p + 1))) - b*((m + n*p + n - j + 1)/(a*c^(n - j)*(m + j*p + 1)))*Int[(c*x)^(m + n - j)*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && ILtQ[Simplify[(m + n*p + n - j + 1)/(n - j)], 0] && NeQ[m + j*p + 1, 0] && (IntegersQ[j, n] || GtQ[c, 0])
Int[((c_)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := c^IntPart[m]*((c*x)^FracPart[m]/x^FracPart[m])*Int[x^m*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && ILtQ[Simplify[(m + n*p + n - j + 1)/(n - j)], 0]
Int[(x_)^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := (1/n)*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*(a*x^Simplify[j/n] + b*x)^p, x], x, x^n] /; FreeQ[{a, b, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[(m + 1)/n]] && NeQ[n^2, 1]
Int[((c_)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := c^IntPart[m]*((c*x)^FracPart[m]/x^FracPart[m])*Int[x^m*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[(m + 1)/n]] && NeQ[n^2, 1]
Int[((c_.)*(x_))^(m_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (c*x)^(m + 1)*((a*x^j + b*x^n)^p/(c*(m + j*p + 1))) - b*p*((n - j)/(c^n*(m + j*p + 1)))*Int[(c*x)^(m + n)*(a*x^j + b*x^n)^(p - 1), x] /; FreeQ[{a, b, c}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && (IntegersQ[j, n] || GtQ[c, 0]) && GtQ[p, 0] && LtQ[m + j*p + 1, 0]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (c*x)^(m + 1)*((a*x^j + b*x^n)^p/(c*(m + n*p + 1))) + a*(n - j)*(p/(c^j*(m + n*p + 1)))*Int[(c*x)^(m + j)*(a*x^j + b*x^n)^(p - 1), x] /; FreeQ[{a, b, c, m}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && (IntegersQ[j, n] || GtQ[c, 0]) && GtQ[p, 0] && NeQ[m + n*p + 1, 0]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := c^(n - 1)*(c*x)^(m - n + 1)*((a*x^j + b*x^n)^(p + 1)/(b*(n - j)*(p + 1))) - c^n*((m + j*p - n + j + 1)/(b*(n - j)*(p + 1)))*Int[(c*x)^(m - n)*(a*x^j + b*x^n)^(p + 1), x] /; FreeQ[{a, b, c}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && (IntegersQ[j, n] || GtQ[c, 0]) && LtQ[p, -1] && GtQ[m + j*p + 1, n - j]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (-c^(j - 1))*(c*x)^(m - j + 1)*((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1))) + c^j*((m + n*p + n - j + 1)/(a*(n - j)*(p + 1)))*Int[(c*x)^(m - j)*(a*x^j + b*x^n)^(p + 1), x] /; FreeQ[{a, b, c, m}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && (IntegersQ[j, n] || GtQ[c, 0]) && LtQ[p, -1]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := c^(n - 1)*(c*x)^(m - n + 1)*((a*x^j + b*x^n)^(p + 1)/(b*(m + n*p + 1))) - a*c^(n - j)*((m + j*p - n + j + 1)/(b*(m + n*p + 1)))*Int[(c*x)^(m - (n - j))*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, m, p}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && (IntegersQ[j, n] || GtQ[c, 0]) && GtQ[m + j*p + 1 - n + j, 0] && NeQ[m + n*p + 1, 0]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := c^(j - 1)*(c*x)^(m - j + 1)*((a*x^j + b*x^n)^(p + 1)/(a*(m + j*p + 1))) - b*((m + n*p + n - j + 1)/(a*c^(n - j)*(m + j*p + 1)))*Int[(c*x)^(m + n - j)*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, m, p}, x] &&  !IntegerQ[p] && LtQ[0, j, n] && (IntegersQ[j, n] || GtQ[c, 0]) && LtQ[m + j*p + 1, 0]
Int[(x_)^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := (1/(m + 1))*Subst[Int[(a*x^Simplify[j/(m + 1)] + b*x^Simplify[n/(m + 1)])^p, x], x, x^(m + 1)] /; FreeQ[{a, b, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && NeQ[m, -1] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n]
Int[((c_)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := c^IntPart[m]*((c*x)^FracPart[m]/x^FracPart[m])*Int[x^m*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && NeQ[m, -1] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (c*x)^(m + 1)*((a*x^j + b*x^n)^p/(c*p*(n - j))) + (a/c^j)*Int[(c*x)^(m + j)*(a*x^j + b*x^n)^(p - 1), x] /; FreeQ[{a, b, c, j, m, n}, x] && IGtQ[p + 1/2, 0] && NeQ[n, j] && EqQ[Simplify[m + j*p + 1], 0] && (IntegerQ[j] || GtQ[c, 0])
Int[(x_)^(m_.)/Sqrt[(a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.)], x_Symbol] := (-2/(n - j))*Subst[Int[1/(1 - a*x^2), x], x, x^(j/2)/Sqrt[a*x^j + b*x^n]] /; FreeQ[{a, b, j, n}, x] && EqQ[m, j/2 - 1] && NeQ[n, j]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := (-c^(j - 1))*(c*x)^(m - j + 1)*((a*x^j + b*x^n)^(p + 1)/(a*(n - j)*(p + 1))) + c^j*((m + n*p + n - j + 1)/(a*(n - j)*(p + 1)))*Int[(c*x)^(m - j)*(a*x^j + b*x^n)^(p + 1), x] /; FreeQ[{a, b, c, j, m, n}, x] && ILtQ[p + 1/2, 0] && NeQ[n, j] && EqQ[Simplify[m + j*p + 1], 0] && (IntegerQ[j] || GtQ[c, 0])
Int[((c_)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := c^IntPart[m]*((c*x)^FracPart[m]/x^FracPart[m])*Int[x^m*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] && IntegerQ[p + 1/2] && NeQ[n, j] && EqQ[Simplify[m + j*p + 1], 0]
Int[((c_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_.))^(p_), x_Symbol] := c^IntPart[m]*(c*x)^FracPart[m]*((a*x^j + b*x^n)^FracPart[p]/(x^(FracPart[m] + j*FracPart[p])*(a + b*x^(n - j))^FracPart[p]))*Int[x^(m + j*p)*(a + b*x^(n - j))^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] &&  !IntegerQ[p] && NeQ[n, j] && PosQ[n - j]
Int[(u_)^(m_.)*((a_.)*(v_)^(j_.) + (b_.)*(v_)^(n_.))^(p_.), x_Symbol] := (u^m/(Coefficient[v, x, 1]*v^m))*Subst[Int[x^m*(a*x^j + b*x^n)^p, x], x, v] /; FreeQ[{a, b, j, m, n, p}, x] && LinearPairQ[u, v, x]

(* ::Subsection::Closed:: *)
(* 1.1.4.3 (e x)^m (a x^j+b x^k)^p (c+d x^n)^q *)
Int[(x_)^(m_.)*((a_.)*(x_)^(j_) + (b_.)*(x_)^(k_.))^(p_)*((c_) + (d_.)*(x_)^(n_))^(q_.), x_Symbol] := (1/n)*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*(a*x^Simplify[j/n] + b*x^Simplify[k/n])^p*(c + d*x)^q, x], x, x^n] /; FreeQ[{a, b, c, d, j, k, m, n, p, q}, x] &&  !IntegerQ[p] && NeQ[k, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && IntegerQ[Simplify[(m + 1)/n]] && NeQ[n^2, 1]
Int[((e_)*(x_))^(m_.)*((a_.)*(x_)^(j_) + (b_.)*(x_)^(k_.))^(p_)*((c_) + (d_.)*(x_)^(n_.))^(q_.), x_Symbol] := e^IntPart[m]*((e*x)^FracPart[m]/x^FracPart[m])*Int[x^m*(a*x^j + b*x^k)^p*(c + d*x^n)^q, x] /; FreeQ[{a, b, c, d, e, j, k, m, n, p, q}, x] &&  !IntegerQ[p] && NeQ[k, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && IntegerQ[Simplify[(m + 1)/n]] && NeQ[n^2, 1]
Int[((e_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(jn_.))^(p_)*((c_) + (d_.)*(x_)^(n_.)), x_Symbol] := c*e^(j - 1)*(e*x)^(m - j + 1)*((a*x^j + b*x^(j + n))^(p + 1)/(a*(m + j*p + 1))) /; FreeQ[{a, b, c, d, e, j, m, n, p}, x] && EqQ[jn, j + n] &&  !IntegerQ[p] && NeQ[b*c - a*d, 0] && EqQ[a*d*(m + j*p + 1) - b*c*(m + n + p*(j + n) + 1), 0] && (GtQ[e, 0] || IntegersQ[j]) && NeQ[m + j*p + 1, 0]
Int[((e_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(jn_.))^(p_)*((c_) + (d_.)*(x_)^(n_.)), x_Symbol] := (-e^(j - 1))*(b*c - a*d)*(e*x)^(m - j + 1)*((a*x^j + b*x^(j + n))^(p + 1)/(a*b*n*(p + 1))) - e^j*((a*d*(m + j*p + 1) - b*c*(m + n + p*(j + n) + 1))/(a*b*n*(p + 1)))*Int[(e*x)^(m - j)*(a*x^j + b*x^(j + n))^(p + 1), x] /; FreeQ[{a, b, c, d, e, j, m, n}, x] && EqQ[jn, j + n] &&  !IntegerQ[p] && NeQ[b*c - a*d, 0] && LtQ[p, -1] && GtQ[j, 0] && LeQ[j, m] && (GtQ[e, 0] || IntegerQ[j])
Int[((e_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(jn_.))^(p_)*((c_) + (d_.)*(x_)^(n_.)), x_Symbol] := c*e^(j - 1)*(e*x)^(m - j + 1)*((a*x^j + b*x^(j + n))^(p + 1)/(a*(m + j*p + 1))) + ((a*d*(m + j*p + 1) - b*c*(m + n + p*(j + n) + 1))/(a*e^n*(m + j*p + 1)))*Int[(e*x)^(m + n)*(a*x^j + b*x^(j + n))^p, x] /; FreeQ[{a, b, c, d, e, j, p}, x] && EqQ[jn, j + n] &&  !IntegerQ[p] && NeQ[b*c - a*d, 0] && GtQ[n, 0] && (LtQ[m + j*p, -1] || (IntegersQ[m - 1/2, p - 1/2] && LtQ[p, 0] && LtQ[m, (-n)*p - 1])) && (GtQ[e, 0] || IntegersQ[j, n]) && NeQ[m + j*p + 1, 0] && NeQ[m - n + j*p + 1, 0]
Int[((e_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(jn_.))^(p_)*((c_) + (d_.)*(x_)^(n_.)), x_Symbol] := d*e^(j - 1)*(e*x)^(m - j + 1)*((a*x^j + b*x^(j + n))^(p + 1)/(b*(m + n + p*(j + n) + 1))) - ((a*d*(m + j*p + 1) - b*c*(m + n + p*(j + n) + 1))/(b*(m + n + p*(j + n) + 1)))*Int[(e*x)^m*(a*x^j + b*x^(j + n))^p, x] /; FreeQ[{a, b, c, d, e, j, m, n, p}, x] && EqQ[jn, j + n] &&  !IntegerQ[p] && NeQ[b*c - a*d, 0] && NeQ[m + n + p*(j + n) + 1, 0] && (GtQ[e, 0] || IntegerQ[j])
Int[(x_)^(m_.)*((a_.)*(x_)^(j_) + (b_.)*(x_)^(k_.))^(p_)*((c_) + (d_.)*(x_)^(n_.))^(q_.), x_Symbol] := (1/(m + 1))*Subst[Int[(a*x^Simplify[j/(m + 1)] + b*x^Simplify[k/(m + 1)])^p*(c + d*x^Simplify[n/(m + 1)])^q, x], x, x^(m + 1)] /; FreeQ[{a, b, c, d, j, k, m, n, p, q}, x] &&  !IntegerQ[p] && NeQ[k, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && NeQ[m, -1] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n]
Int[((e_)*(x_))^(m_.)*((a_.)*(x_)^(j_) + (b_.)*(x_)^(k_.))^(p_)*((c_) + (d_.)*(x_)^(n_.))^(q_.), x_Symbol] := e^IntPart[m]*((e*x)^FracPart[m]/x^FracPart[m])*Int[x^m*(a*x^j + b*x^k)^p*(c + d*x^n)^q, x] /; FreeQ[{a, b, c, d, e, j, k, m, n, p, q}, x] &&  !IntegerQ[p] && NeQ[k, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[k/n]] && NeQ[m, -1] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n]
Int[((e_.)*(x_))^(m_.)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(jn_.))^(p_)*((c_) + (d_.)*(x_)^(n_.))^(q_.), x_Symbol] := e^IntPart[m]*(e*x)^FracPart[m]*((a*x^j + b*x^(j + n))^FracPart[p]/(x^(FracPart[m] + j*FracPart[p])*(a + b*x^n)^FracPart[p]))*Int[x^(m + j*p)*(a + b*x^n)^p*(c + d*x^n)^q, x] /; FreeQ[{a, b, c, d, e, j, m, n, p, q}, x] && EqQ[jn, j + n] &&  !IntegerQ[p] && NeQ[b*c - a*d, 0] &&  !(EqQ[n, 1] && EqQ[j, 1])

(* ::Subsection::Closed:: *)
(* 1.1.4.4 P(x) (c x)^m (a x^j+b x^n)^p *)
Int[(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := With[{d = Denominator[n]}, d*Subst[Int[x^(d - 1)*(SubstFor[x^n, Pq, x] /. x -> x^(d*n))*(a*x^(d*j) + b*x^(d*n))^p, x], x, x^(1/d)]] /; FreeQ[{a, b, j, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && RationalQ[j, n] && IntegerQ[j/n] && LtQ[-1, n, 1]
Int[(x_)^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := (1/n)*Subst[Int[x^(Simplify[(m + 1)/n] - 1)*SubstFor[x^n, Pq, x]*(a*x^Simplify[j/n] + b*x)^p, x], x, x^n] /; FreeQ[{a, b, j, m, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[(m + 1)/n]]
Int[((c_)*(x_))^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := c^(Sign[m]*Quotient[m, Sign[m]])*((c*x)^Mod[m, Sign[m]]/x^Mod[m, Sign[m]])*Int[x^m*Pq*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[(m + 1)/n]] && RationalQ[m] && GtQ[m^2, 1]
Int[((c_)*(x_))^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := ((c*x)^m/x^m)*Int[x^m*Pq*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[(m + 1)/n]]
Int[(x_)^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := With[{g = GCD[m + 1, n]}, (1/g)*Subst[Int[x^((m + 1)/g - 1)*(Pq /. x -> x^(1/g))*(a*x^(j/g) + b*x^(n/g))^p, x], x, x^g] /; NeQ[g, 1]] /; FreeQ[{a, b, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && IGtQ[j, 0] && IGtQ[n, 0] && IGtQ[j/n, 0] && IntegerQ[m]
Int[((c_.)*(x_))^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := With[{q = Expon[Pq, x]}, With[{Pqq = Coeff[Pq, x, q]}, Pqq*(c*x)^(m + q - n + 1)*((a*x^j + b*x^n)^(p + 1)/(b*c^(q - n + 1)*(m + q + n*p + 1))) + Int[(c*x)^m*ExpandToSum[Pq - Pqq*x^q - a*Pqq*(m + q - n + 1)*(x^(q - n)/(b*(m + q + n*p + 1))), x]*(a*x^j + b*x^n)^p, x]] /; GtQ[q, n - 1] && NeQ[m + q + n*p + 1, 0] && (IntegerQ[2*p] || IntegerQ[p + (q + 1)/(2*n)])] /; FreeQ[{a, b, c, m, p}, x] && PolyQ[Pq, x] &&  !IntegerQ[p] && IGtQ[j, 0] && IGtQ[n, 0] && LtQ[j, n]
Int[(x_)^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := (1/(m + 1))*Subst[Int[(SubstFor[x^n, Pq, x] /. x -> x^Simplify[n/(m + 1)])*(a*x^Simplify[j/(m + 1)] + b*x^Simplify[n/(m + 1)])^p, x], x, x^(m + 1)] /; FreeQ[{a, b, j, m, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n]
Int[((c_)*(x_))^(m_)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := c^(Sign[m]*Quotient[m, Sign[m]])*((c*x)^Mod[m, Sign[m]]/x^Mod[m, Sign[m]])*Int[x^m*Pq*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n] && GtQ[m^2, 1]
Int[((c_)*(x_))^(m_)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := ((c*x)^m/x^m)*Int[x^m*Pq*(a*x^j + b*x^n)^p, x] /; FreeQ[{a, b, c, j, m, n, p}, x] && PolyQ[Pq, x^n] &&  !IntegerQ[p] && NeQ[n, j] && IntegerQ[Simplify[j/n]] && IntegerQ[Simplify[n/(m + 1)]] &&  !IntegerQ[n]
Int[((c_.)*(x_))^(m_.)*(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := Int[ExpandIntegrand[(c*x)^m*Pq*(a*x^j + b*x^n)^p, x], x] /; FreeQ[{a, b, c, j, m, n, p}, x] && (PolyQ[Pq, x] || PolyQ[Pq, x^n]) &&  !IntegerQ[p] && NeQ[n, j]
Int[(Pq_)*((a_.)*(x_)^(j_.) + (b_.)*(x_)^(n_))^(p_), x_Symbol] := Int[ExpandIntegrand[Pq*(a*x^j + b*x^n)^p, x], x] /; FreeQ[{a, b, j, n, p}, x] && (PolyQ[Pq, x] || PolyQ[Pq, x^n]) &&  !IntegerQ[p] && NeQ[n, j]