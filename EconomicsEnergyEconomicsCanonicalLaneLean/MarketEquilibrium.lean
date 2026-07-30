import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure MarketEquilibriumPackage where
  agentCount : Nat
  commoditySpace : Type u
  initialEndowments : commoditySpace → commoditySpace
  preferences : Prop
  demandFunctions : commoditySpace → commoditySpace
  priceSpace : Type v
  equilibriumPrice : priceSpace
  excessDemandZero : Prop
  existenceAssumptions : Prop

structure MarketEquilibriumEvidence (M : MarketEquilibriumPackage) where
  excessDemandZeroClosed : M.excessDemandZero
  existenceAssumptionsClosed : M.existenceAssumptions

def MarketEquilibriumClosed (M : MarketEquilibriumPackage) : Prop :=
  M.excessDemandZero ∧ M.existenceAssumptions

theorem market_equilibrium_closed_from_evidence (M : MarketEquilibriumPackage)
    (E : MarketEquilibriumEvidence M) : MarketEquilibriumClosed M := by
  exact And.intro E.excessDemandZeroClosed E.existenceAssumptionsClosed

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse