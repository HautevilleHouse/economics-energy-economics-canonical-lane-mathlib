import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyEconomicsPackage where
  energyResource : Type u
  extractionCost : energyResource → ℝ
  renewableBackstop : Prop
  carbonPricing : Prop
  intergenerationalEquity : Prop
  dynamicEfficiency : Prop

structure EnergyEconomicsEvidence (E : EnergyEconomicsPackage) where
  renewableBackstopClosed : E.renewableBackstop
  carbonPricingClosed : E.carbonPricing
  intergenerationalEquityClosed : E.intergenerationalEquity
  dynamicEfficiencyClosed : E.dynamicEfficiency

def EnergyEconomicsClosed (E : EnergyEconomicsPackage) : Prop :=
  E.renewableBackstop ∧ E.carbonPricing ∧ E.intergenerationalEquity ∧ E.dynamicEfficiency

theorem energy_economics_closed_from_evidence (E : EnergyEconomicsPackage)
    (Ev : EnergyEconomicsEvidence E) : EnergyEconomicsClosed E := by
  exact And.intro Ev.renewableBackstopClosed
    (And.intro Ev.carbonPricingClosed
      (And.intro Ev.intergenerationalEquityClosed Ev.dynamicEfficiencyClosed))

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse