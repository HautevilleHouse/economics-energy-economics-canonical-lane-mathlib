import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  stateSpace : Type u
  commoditySpace : Type v
  agentCount : Nat
  endowments : agentCount → stateSpace → commoditySpace
  utilities : agentCount → (commoditySpace → ℝ)
  priceSystem : stateSpace → commoditySpace → ℝ
  budgetConstraintsSatisfied : Prop
  marketClearing : Prop
  existenceAssumptions : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  budgetConstraintsSatisfiedClosed : A.budgetConstraintsSatisfied
  marketClearingClosed : A.marketClearing
  existenceAssumptionsClosed : A.existenceAssumptions

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.budgetConstraintsSatisfied ∧ A.marketClearing ∧ A.existenceAssumptions

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage)
    (E : ArrowDebreuEquilibriumEvidence A) : ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.budgetConstraintsSatisfiedClosed
    (And.intro E.marketClearingClosed E.existenceAssumptionsClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse