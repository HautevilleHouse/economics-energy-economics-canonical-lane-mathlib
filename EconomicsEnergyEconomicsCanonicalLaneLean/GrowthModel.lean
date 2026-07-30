import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u → ℝ
  capitalStock : ℝ
  laborForce : ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyState : ℝ
  convergenceRate : ℝ
  stabilityAssumptions : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  steadyStateClosed : G.steadyState = G.steadyState
  convergenceRateClosed : G.convergenceRate > 0
  stabilityAssumptionsClosed : G.stabilityAssumptions

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.steadyState = G.steadyState ∧ G.convergenceRate > 0 ∧ G.stabilityAssumptions

theorem growth_model_closed_from_evidence (G : GrowthModelPackage)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.steadyStateClosed
    (And.intro E.convergenceRateClosed E.stabilityAssumptionsClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse