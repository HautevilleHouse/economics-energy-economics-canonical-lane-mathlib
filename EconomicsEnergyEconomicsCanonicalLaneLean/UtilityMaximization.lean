import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure UtilityMaximizationPackage where
  preferenceRelation : Type u
  utilityFunction : Type v
  consumerBudget : Type w
  utilityMaximized : Prop
  demandCorrespondence : Prop

structure UtilityMaximizationEvidence (U : UtilityMaximizationPackage) where
  utilityMaximizedClosed : U.utilityMaximized
  demandCorrespondenceClosed : U.demandCorrespondence

def UtilityMaximizationClosed (U : UtilityMaximizationPackage) : Prop :=
  U.utilityMaximized ∧ U.demandCorrespondence

theorem utility_maximization_closed_from_evidence (U : UtilityMaximizationPackage)
    (E : UtilityMaximizationEvidence U) : UtilityMaximizationClosed U := by
  exact And.intro E.utilityMaximizedClosed E.demandCorrespondenceClosed

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse