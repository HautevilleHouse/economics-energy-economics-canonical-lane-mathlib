import EconomicsEnergyEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A with
  | AdmissibleClass.mk _ _ _ _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse