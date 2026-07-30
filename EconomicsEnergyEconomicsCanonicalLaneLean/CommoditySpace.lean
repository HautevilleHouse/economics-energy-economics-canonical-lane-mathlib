import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure CommodityBundle where
  commodities : List String
  quantities : List ℚ
  labelsMatchLength : Prop

def bundlesMatchLength (x y : CommodityBundle) : Prop :=
  x.quantities.length = y.quantities.length

structure CommoditySpaceEvidence where
  vectorsDefined : Prop
  additionDefined : Prop
  scalarMultiplicationDefined : Prop
  zeroBundleExists : Prop

def CommoditySpaceClosed (E : CommoditySpaceEvidence) : Prop :=
  E.vectorsDefined ∧ E.additionDefined ∧ E.scalarMultiplicationDefined ∧ E.zeroBundleExists

theorem commodity_space_closed_from_evidence (E : CommoditySpaceEvidence) : CommoditySpaceClosed E :=
  And.intro E.vectorsDefined (And.intro E.additionDefined (And.intro E.scalarMultiplicationDefined E.zeroBundleExists))

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse