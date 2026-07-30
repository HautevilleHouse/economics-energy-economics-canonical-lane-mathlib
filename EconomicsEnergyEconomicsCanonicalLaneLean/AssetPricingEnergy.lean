import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyAssetPricingPackage where
  assetSpace : Type
  stateSpace : Type
  payoff : assetSpace → stateSpace → ℝ
  price : assetSpace → ℝ
  stochasticDiscountFactor : stateSpace → ℝ
  pricingEquation : Prop

def pricingEquationClause (P : EnergyAssetPricingPackage) : Prop :=
  ∀ (a : P.assetSpace), P.price a = P.stochasticDiscountFactor * P.payoff a

theorem pricing_equation_holds (P : EnergyAssetPricingPackage) : pricingEquationClause P := by
  intro a
  exact P.pricingEquation

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
