import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure UtilityFunctionPackage where
  consumptionSet : Type u
  utility : consumptionSet → ℝ
  continuity : Prop
  monotonicity : Prop
  convexity : Prop
  differentiability : Prop

structure UtilityFunctionEvidence (U : UtilityFunctionPackage) where
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity
  differentiabilityClosed : U.differentiability

def UtilityFunctionClosed (U : UtilityFunctionPackage) : Prop :=
  U.continuity ∧ U.monotonicity ∧ U.convexity ∧ U.differentiability

theorem utility_function_closed_from_evidence (U : UtilityFunctionPackage)
    (E : UtilityFunctionEvidence U) : UtilityFunctionClosed U := by
  exact And.intro E.continuityClosed
    (And.intro E.monotonicityClosed
      (And.intro E.convexityClosed E.differentiabilityClosed))

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse