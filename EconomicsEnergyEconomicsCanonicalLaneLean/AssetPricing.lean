import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  dividendProcess : stateSpace → ℝ
  discountFactor : ℝ
  riskFreeRate : ℝ
  priceFunction : stateSpace → ℝ
  martingaleAssumption : Prop
  equilibriumCondition : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  martingaleAssumptionClosed : A.martingaleAssumption
  equilibriumConditionClosed : A.equilibriumCondition

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.martingaleAssumption ∧ A.equilibriumCondition

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.martingaleAssumptionClosed E.equilibriumConditionClosed

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse