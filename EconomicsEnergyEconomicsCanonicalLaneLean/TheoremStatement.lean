import EconomicsEnergyEconomicsCanonicalLaneLean.mathlib

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EconomicsEnergySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicsEnergyAdmittedObject where
  space : EconomicsEnergySpace
  energyMarketStructure : Prop
  generalEquilibrium : Prop
  socialWelfare : Prop
  marketClearing : Prop
  conclusion : marketClearing

def EconomicsEnergyWitnessClosed (O : EconomicsEnergyAdmittedObject) : Prop :=
  O.marketClearing

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse