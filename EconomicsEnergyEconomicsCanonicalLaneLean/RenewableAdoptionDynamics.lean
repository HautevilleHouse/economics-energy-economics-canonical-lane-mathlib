import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure RenewableAdoptionDynamicsPackage where
  adoptionRate : Type u
  costFunction : Type v
  policyIncentives : Type w
  diffusionConvergence : Prop
  technologicalProgress : Prop
  networkEffects : Prop

structure RenewableAdoptionDynamicsEvidence (P : RenewableAdoptionDynamicsPackage) where
  diffusionConvergenceClosed : P.diffusionConvergence
  technologicalProgressClosed : P.technologicalProgress
  networkEffectsClosed : P.networkEffects

def RenewableAdoptionDynamicsClosed (P : RenewableAdoptionDynamicsPackage) : Prop :=
  P.diffusionConvergence ∧ P.technologicalProgress ∧ P.networkEffects

theorem renewable_adoption_dynamics_closed_from_evidence
    (P : RenewableAdoptionDynamicsPackage)
    (E : RenewableAdoptionDynamicsEvidence P) :
    RenewableAdoptionDynamicsClosed P := by
  exact And.intro E.diffusionConvergenceClosed
    (And.intro E.technologicalProgressClosed E.networkEffectsClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse