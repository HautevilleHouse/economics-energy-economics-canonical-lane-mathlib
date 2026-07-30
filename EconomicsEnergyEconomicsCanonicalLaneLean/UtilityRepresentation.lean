import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure UtilityRepresentationPackage where
  preferenceRelation : Type u
  utilityFunction : Type v
  continuityAxiom : Prop
  monotonicity : Prop
  concavity : Prop

structure UtilityRepresentationEvidence (U : UtilityRepresentationPackage) where
  continuityAxiomClosed : U.continuityAxiom
  monotonicityClosed : U.monotonicity
  concavityClosed : U.concavity

def UtilityRepresentationClosed (U : UtilityRepresentationPackage) : Prop :=
  U.continuityAxiom ∧ U.monotonicity ∧ U.concavity

theorem utility_representation_closed_from_evidence
    (U : UtilityRepresentationPackage) (Ev : UtilityRepresentationEvidence U) :
    UtilityRepresentationClosed U := by
  exact And.intro Ev.continuityAxiomClosed (And.intro Ev.monotonicityClosed Ev.concavityClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse