import canonicalLaneMathlib.AdmissibleClass
import EconomicsEnergyEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnergyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
