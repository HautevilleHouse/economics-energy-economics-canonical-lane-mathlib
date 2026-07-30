import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure UtilityOptimizationPackage where
  consumerPreferences : Type
  utilityFunction : consumerPreferences → ℝ
  budgetConstraint : consumerPreferences → ℝ
  optimalBundle : consumerPreferences
  optimalUtility : ℝ

theorem optimality_condition (U : UtilityOptimizationPackage) :
    U.optimalUtility = U.utilityFunction U.optimalBundle := by
  rfl

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse