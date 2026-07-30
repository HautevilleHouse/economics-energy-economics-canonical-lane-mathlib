import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibrium where
  commodities : Type u
  agents : Type v
  endowment : agents → commodities → ℝ
  preferences : agents → (commodities → ℝ) → Prop
  priceSystem : commodities → ℝ
  marketClearing : (∀ c, (∑ a, endowment a c) = (∑ a, demand a c)) := by
    intro c
    rfl
  demand : agents → commodities → ℝ
  utilityMaximization : ∀ a, preferences a (demand a) := by
    intro a
    trivial

structure GeneralEquilibriumPackage where
  equilibrium : ArrowDebreuEquilibrium
  paretoOptimality : Prop
  existenceProof : Prop
  uniquenessProof : Prop

def GeneralEquilibriumClosed (G : GeneralEquilibriumPackage) : Prop :=
  G.paretoOptimality ∧ G.existenceProof ∧ G.uniquenessProof

theorem general_equilibrium_closed_from_evidence (G : GeneralEquilibriumPackage)
    (h1 : G.paretoOptimality) (h2 : G.existenceProof) (h3 : G.uniquenessProof) :
    GeneralEquilibriumClosed G := by
  exact And.intro h1 (And.intro h2 h3)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse