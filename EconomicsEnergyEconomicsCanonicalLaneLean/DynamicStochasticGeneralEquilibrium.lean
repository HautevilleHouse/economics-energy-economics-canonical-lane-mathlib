import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure DSGEModel where
  household : Type u
  firm : Type v
  government : Type w
  exogenousShock : Type x
  equilibriumConditions : Prop
  steadyState : Prop
  linearizedSystem : Prop
  solutionMethod : Prop

structure Calibration where
  parameters : (String → ℝ)
  targetMoments : (String → ℝ)
  fitCriterion : ℝ
  calibrationValid : Prop

structure DSGEPackage where
  model : DSGEModel
  calibration : Calibration
  estimationResults : Prop
  policyImplications : Prop

def DSGEClosed (D : DSGEPackage) : Prop :=
  D.estimationResults ∧ D.policyImplications

theorem dsge_closed_from_evidence (D : DSGEPackage)
    (h1 : D.estimationResults) (h2 : D.policyImplications) :
    DSGEClosed D := by
  exact And.intro h1 h2

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse