import EconomicsEnergyEconomicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EnergyGoodsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EnergyEconomicsAdmittedObject where
  goodsSpace : EnergyGoodsSpace
  marketsClearing : Prop
  welfareOptimal : Prop
  dynamicConsistency : Prop
  conclusion : marketsClearing ∧ welfareOptimal ∧ dynamicConsistency

structure EnergyEconomicsEndgameState where
  object : EnergyEconomicsAdmittedObject

def EnergyEconomicsWitnessClosed (O : EnergyEconomicsAdmittedObject) : Prop :=
  O.marketsClearing ∧ O.welfareOptimal ∧ O.dynamicConsistency

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse
