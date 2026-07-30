import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure GrowthModelConvergencePackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  laborSupply : Prop
  savingRate : Prop
  steadyStateExists : Prop
  convergenceRate : Prop

structure GrowthModelConvergenceEvidence (G : GrowthModelConvergencePackage) where
  steadyStateExistsClosed : G.steadyStateExists
  convergenceRateClosed : G.convergenceRate

def GrowthModelConvergenceClosed (G : GrowthModelConvergencePackage) : Prop :=
  G.steadyStateExists ∧ G.convergenceRate

theorem growth_model_convergence_closed_from_evidence
    (G : GrowthModelConvergencePackage) (Ev : GrowthModelConvergenceEvidence G) :
    GrowthModelConvergenceClosed G := by
  exact And.intro Ev.steadyStateExistsClosed Ev.convergenceRateClosed

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse