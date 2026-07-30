import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyUtilityFunction where
  consumptionSet : Type u
  utilityMapping : consumptionSet → ℝ
  concavityProperty : Prop
  continuityProperty : Prop

structure EnergyBudgetConstraint where
  income : ℝ
  energyPrice : ℝ
  otherGoodsPrice : ℝ
  constraint : ℝ → ℝ → Prop

structure UtilityOptimizationEvidence (U : EnergyUtilityFunction) (B : EnergyBudgetConstraint) where
  utilityMappingClosed : U.utilityMapping
  budgetConstraintClosed : B.constraint
  optimalBundleExists : Prop
  optimalBundleUnique : Prop

def UtilityOptimizationClosed (U : EnergyUtilityFunction) (B : EnergyBudgetConstraint) : Prop :=
  U.concavityProperty ∧ U.continuityProperty ∧ B.constraint

theorem utility_optimization_closed_from_evidence (U : EnergyUtilityFunction) (B : EnergyBudgetConstraint)
    (E : UtilityOptimizationEvidence U B) : UtilityOptimizationClosed U B := by
  exact And.intro U.concavityProperty (And.intro U.continuityProperty E.budgetConstraintClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse