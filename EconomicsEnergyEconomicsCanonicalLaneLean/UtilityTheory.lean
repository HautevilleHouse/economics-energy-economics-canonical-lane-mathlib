import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure UtilityFunction (C : Type u) where
  u : C → ℝ
  continuous : Prop
  monotonic : Prop
  concave : Prop

structure UtilityMaximizationProblem (C : Type u) where
  utility : UtilityFunction C
  budgetSet : Set C
  solution : C
  optimality : utility.u solution = max' (utility.u '' budgetSet) := by
    exact max'_eq_sup_image _ _

structure UtilityTheoryPackage (C : Type u) where
  utility : UtilityFunction C
  maximization : UtilityMaximizationProblem C
  existenceTheorem : Prop
  uniquenessTheorem : Prop

def UtilityTheoryClosed (U : UtilityTheoryPackage C) : Prop :=
  U.existenceTheorem ∧ U.uniquenessTheorem

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage C)
    (h1 : U.existenceTheorem) (h2 : U.uniquenessTheorem) :
    UtilityTheoryClosed U := by
  exact And.intro h1 h2

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse