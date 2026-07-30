import EconomicsEnergyEconomicsCanonicalLaneLean.GeneralEquilibrium

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure MarketStructurePackage {C : CommoditySpacePackage} {E : EdgeworthBoxPackage C}
    (Eql : GeneralEquilibriumPackage C E) where
  spotMarkets : Prop
  futuresMarkets : Prop
  forwardContracts : Prop
  optionsContracts : Prop

def MarketStructureClosed {C : CommoditySpacePackage} {E : EdgeworthBoxPackage C}
    (Eql : GeneralEquilibriumPackage C E) (M : MarketStructurePackage Eql) : Prop :=
  M.spotMarkets ∧ M.futuresMarkets ∧ M.forwardContracts ∧ M.optionsContracts

theorem market_structure_closed_spot_futures {C : CommoditySpacePackage} {E : EdgeworthBoxPackage C}
    (Eql : GeneralEquilibriumPackage C E) (M : MarketStructurePackage Eql)
    (hSpot : M.spotMarkets) (hFutures : M.futuresMarkets) : M.spotMarkets ∧ M.futuresMarkets := by
  exact And.intro hSpot hFutures

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
