import EconomicsEnergyEconomicsCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure UtilityGrowthModelPackage {G : CommoditySpacePackage}
    {AD : ArrowDebreuEquilibriumPackage E} (E : EndowmentPackage G) where
  intertemporalUtility : Prop
  capitalAccumulation : Prop
  energyDepletion : Prop
  balancedGrowthPath : Prop
  welfareComparison : Prop

structure UtilityGrowthModelEvidence {G : CommoditySpacePackage}
    {AD : ArrowDebreuEquilibriumPackage E} {E : EndowmentPackage G}
    (U : UtilityGrowthModelPackage E) where
  intertemporalUtilityClosed : U.intertemporalUtility
  capitalAccumulationClosed : U.capitalAccumulation
  energyDepletionClosed : U.energyDepletion
  balancedGrowthPathClosed : U.balancedGrowthPath
  welfareComparisonClosed : U.welfareComparison

def UtilityGrowthModelClosed {G : CommoditySpacePackage}
    {AD : ArrowDebreuEquilibriumPackage E} {E : EndowmentPackage G}
    (U : UtilityGrowthModelPackage E) : Prop :=
  U.intertemporalUtility ∧ U.capitalAccumulation ∧ U.energyDepletion ∧
  U.balancedGrowthPath ∧ U.welfareComparison

theorem utility_growth_model_closed_from_evidence
    {G : CommoditySpacePackage} {AD : ArrowDebreuEquilibriumPackage E}
    {E : EndowmentPackage G} (U : UtilityGrowthModelPackage E)
    (Ev : UtilityGrowthModelEvidence U) : UtilityGrowthModelClosed U := by
  exact And.intro Ev.intertemporalUtilityClosed
    (And.intro Ev.capitalAccumulationClosed
      (And.intro Ev.energyDepletionClosed
        (And.intro Ev.balancedGrowthPathClosed Ev.welfareComparisonClosed)))

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
