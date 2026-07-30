import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure ProductionTechnologyPackage where
  productionSet : Type u
  inputOutputPairs : Type v
  convexityAssumption : Prop
  constantReturns : Prop
  profitMaximization : Prop

structure ProductionTechnologyEvidence (P : ProductionTechnologyPackage) where
  convexityAssumptionClosed : P.convexityAssumption
  constantReturnsClosed : P.constantReturns
  profitMaximizationClosed : P.profitMaximization

def ProductionTechnologyClosed (P : ProductionTechnologyPackage) : Prop :=
  P.convexityAssumption ∧ P.constantReturns ∧ P.profitMaximization

theorem production_technology_closed_from_evidence (P : ProductionTechnologyPackage)
    (E : ProductionTechnologyEvidence P) : ProductionTechnologyClosed P := by
  exact And.intro E.convexityAssumptionClosed (And.intro E.constantReturnsClosed E.profitMaximizationClosed)

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse