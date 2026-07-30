import canonicalLaneMathlib.AdmissibleClass
import EconomicsEnergyEconomicsCanonicalLaneLean.EnergyMarketEquilibrium

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

def ConstrainedEnergyEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_energy_economics_endgame (A : AdmissibleClass) :
    ConstrainedEnergyEconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse