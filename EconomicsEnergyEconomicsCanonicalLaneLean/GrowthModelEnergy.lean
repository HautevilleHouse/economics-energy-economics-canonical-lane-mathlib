import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyGrowthModelPackage where
  capitalStock : ℕ → ℝ
  energyInput : ℕ → ℝ
  outputFunction : ℝ → ℝ → ℝ
  initialCapital : ℝ
  initialEnergy : ℝ
  lawOfMotion : Prop

structure EnergyGrowthEvidence (G : EnergyGrowthModelPackage) where
  lawOfMotionClosed : G.lawOfMotion

def EnergyGrowthClosed (G : EnergyGrowthModelPackage) : Prop :=
  G.lawOfMotion

theorem energy_growth_closed_from_evidence (G : EnergyGrowthModelPackage) (E : EnergyGrowthEvidence G) :
    EnergyGrowthClosed G := by
  exact E.lawOfMotionClosed

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
