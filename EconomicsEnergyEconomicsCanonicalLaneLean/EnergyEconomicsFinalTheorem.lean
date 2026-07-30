import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsEnergyEconomicsCanonicalLaneLean.EnergyEconomicsBridgeLemmas
import HautevilleHouse.EconomicsEnergyEconomicsCanonicalLaneLean.EnergyEconomicsGateLemmas

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

def ConstrainedArrowDebreuClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_arrow_debreu_endgame (A : AdmissibleClass) :
    ConstrainedArrowDebreuClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
