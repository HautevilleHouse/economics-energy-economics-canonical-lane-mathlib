import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure PreferenceRelation (B : Type) where
  agent : String
  preorder : B → B → Prop
  completeness : ∀ x y : B, preorder x y ∨ preorder y x
  transitivity : ∀ x y z : B, preorder x y → preorder y z → preorder x z

structure UtilityFunction (B : Type) where
  domain : B
  codomain : ℝ
  representation : ∀ x y : B, PreferenceRelation.preorder B x y ↔ codomain x ≤ codomain y

structure UtilityPreferenceEvidence where
  preferenceDefined : Prop
  utilityExists : Prop
  representationClosed : Prop

def UtilityPreferenceClosed (E : UtilityPreferenceEvidence) : Prop :=
  E.preferenceDefined ∧ E.utilityExists ∧ E.representationClosed

theorem utility_preference_closed_from_evidence (E : UtilityPreferenceEvidence) : UtilityPreferenceClosed E :=
  And.intro E.preferenceDefined (And.intro E.utilityExists E.representationClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse