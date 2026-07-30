import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsEnergyEconomicsCanonicalLaneLean.EnergyEconomicsAdmissible

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
