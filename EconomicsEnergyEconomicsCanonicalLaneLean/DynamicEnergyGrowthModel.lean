import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyCapitalStock where
  initialCapital : ℝ
  depreciationRate : ℝ
  investmentFunction : ℝ → ℝ
  energyInput : ℝ → ℝ

structure EnergyProductionFunction where
  output : ℝ → ℝ → ℝ
  constantReturnsToScale : Prop
  diminishingMarginalProduct : Prop

structure DynamicGrowthEvidence (K : EnergyCapitalStock) (F : EnergyProductionFunction) where
  capitalInitialClosed : K.initialCapital
  productionFunctionClosed : F.output
  steadyStateExists : Prop
  saddlePathStability : Prop

def DynamicEnergyGrowthClosed (K : EnergyCapitalStock) (F : EnergyProductionFunction) : Prop :=
  K.investmentFunction ∧ K.energyInput ∧ F.constantReturnsToScale ∧ F.diminishingMarginalProduct

theorem dynamic_energy_growth_closed_from_evidence (K : EnergyCapitalStock) (F : EnergyProductionFunction)
    (E : DynamicGrowthEvidence K F) : DynamicEnergyGrowthClosed K F := by
  exact And.intro K.investmentFunction (And.intro K.energyInput (And.intro F.constantReturnsToScale F.diminishingMarginalProduct))

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse