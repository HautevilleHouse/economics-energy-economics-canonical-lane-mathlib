import EconomicsEnergyEconomicsCanonicalLaneLean.EnergyAssetPricing

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyEconomicAdmissibleEvidence (A : AdmissibleClass) where
  equilibriumEvidence : GeneralEquilibriumPackage (CommoditySpacePackage.ofAdmissible A) (EdgeworthBoxPackage.ofAdmissible A)
  energyAssetPricingEvidence : EnergyAssetPricingPackage (MarketStructurePackage.ofAdmissible A)
  marketStructureEvidence : MarketStructurePackage (GeneralEquilibriumPackage.ofAdmissible A)
  allClosed : GeneralEquilibriumClosed equilibriumEvidence ∧
             MarketStructureClosed equilibriumEvidence marketStructureEvidence ∧
             EnergyAssetPricingClosed marketStructureEvidence energyAssetPricingEvidence

theorem energy_economic_admissible_evidence_closure (A : AdmissibleClass)
    (E : EnergyEconomicAdmissibleEvidence A) : admittedClosure A := by
  obtain ⟨eq, ap, ms, h⟩ := E
  exact And.intro (bridge_from_admissible_class A) (Or.inl (by
    -- from closed equilibrium, market structure, and asset pricing, endpoint satisfied
    exact h.1.equilibriumConditionClosed))

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
