import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type
  priceSystem : Type
  agentEndowments : List commoditySpace
  utilityFunctions : List (commoditySpace → ℝ)
  feasibilityCondition : Prop
  utilityMaximization : Prop
  marketClearing : Prop

structure ArrowDebreuEvidence (E : ArrowDebreuEquilibriumPackage) where
  feasibilityClosed : E.feasibilityCondition
  utilityMaximizationClosed : E.utilityMaximization
  marketClearingClosed : E.marketClearing

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibriumPackage) : Prop :=
  E.feasibilityCondition ∧ E.utilityMaximization ∧ E.marketClearing

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEquilibriumPackage)
    (Ev : ArrowDebreuEvidence E) : ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.feasibilityClosed (And.intro Ev.utilityMaximizationClosed Ev.marketClearingClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
