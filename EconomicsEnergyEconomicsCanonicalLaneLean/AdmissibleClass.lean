import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EnergyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EnergyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
