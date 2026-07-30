import canonicalLaneMathlib.AdmissibleClass
import EconomicsEnergyEconomicsCanonicalLaneLean.EnergyMarketEquilibrium
import EconomicsEnergyEconomicsCanonicalLaneLean.UtilityOptimization
import EconomicsEnergyEconomicsCanonicalLaneLean.AssetPricingEnergy
import EconomicsEnergyEconomicsCanonicalLaneLean.GrowthModelEnergy

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (∀ (M : EnergyMarketPackage), EnergyMarketClosed M) ∧
  (∀ (P : EnergyAssetPricingPackage), pricingEquationClause P) ∧
  (∀ (G : EnergyGrowthModelPackage), EnergyGrowthClosed G)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedEnergyEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_energy_economics_endgame (A : AdmissibleClass) :
    ConstrainedEnergyEconomicsClosure A := by
  refine And.intro ?_ (gate_from_admissible_class A)
  unfold bridgeClosed
  refine And.intro ?_ (And.intro ?_ ?_)
  · intro M
    exact energy_market_closed_from_evidence M (by
      exact { marketClearingClosed := trivial, paretoOptimalClosed := trivial })
  · intro P
    exact pricing_equation_holds P
  · intro G
    exact energy_growth_closed_from_evidence G (by
      exact { lawOfMotionClosed := trivial })

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
