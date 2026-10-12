// SHARED CODE START

using PoolNew as B;

// Contract A (currentContract) state model
ghost mapping(uint => uint) contractAState;
// State of contract A (currentContract) that has been written to already, so we don't track its reads anymore
ghost mapping(uint => bool) killedFlagA;

// Contract B state model
ghost mapping(uint => uint) contractBState;
// State of contract B that has been written to already, so we don't track its reads anymore
ghost mapping(uint => bool) killedFlagB;

// update first-time reads
hook ALL_SLOAD(uint loc) uint value {
   if(executingContract == currentContract && !killedFlagA[loc]) {
       require contractAState[loc] == value;
   } else if(executingContract == B && !killedFlagB[loc]) {
       require contractBState[loc] == value;
   }
}

// update writes
hook ALL_SSTORE(uint loc, uint value) {
   if(executingContract == currentContract) {
      killedFlagA[loc] = true;
   } else if(executingContract == B) {
      killedFlagB[loc] = true;
   }
}

// assume the two contracts have the same state and address
function assume_equivalent_states() {
    // no slot has been read yet
    require forall uint i. !killedFlagA[i];
    require forall uint i. !killedFlagB[i];
    // same state
    require forall uint i. contractAState[i] == contractBState[i];
    // same address
    require currentContract == B;
}

// sets everything but the callee the same in two environments
function e_equivalence(env e1, env e2) {
    require e1.msg.sender == e2.msg.sender;
    require e1.block.timestamp == e2.block.timestamp;
    require e1.msg.value == e2.msg.value;
    require e1.block.number == e2.block.number;
    // require e1.msg.data == e2.msg.data;
}
// SHARED CODE END

// RULES START
rule equivalence_of_revert_conditions()
{
    storage init = lastStorage;
    assume_equivalent_states();
    bool tickSpacingToMaxLiquidityPerTick_PoolOld_revert;
    bool tickSpacingToMaxLiquidityPerTick_PoolNew_revert;
    // using this as opposed to generating input parameters is experimental
    env e_tickSpacingToMaxLiquidityPerTick_PoolOld; calldataarg args;
    env e_tickSpacingToMaxLiquidityPerTick_PoolNew;
    e_equivalence(e_tickSpacingToMaxLiquidityPerTick_PoolOld, e_tickSpacingToMaxLiquidityPerTick_PoolNew);

    tickSpacingToMaxLiquidityPerTick@withrevert(e_tickSpacingToMaxLiquidityPerTick_PoolOld, args);
    tickSpacingToMaxLiquidityPerTick_PoolOld_revert = lastReverted;

    B.tickSpacingToMaxLiquidityPerTick@withrevert(e_tickSpacingToMaxLiquidityPerTick_PoolNew, args) at init;
    tickSpacingToMaxLiquidityPerTick_PoolNew_revert = lastReverted;

    assert(tickSpacingToMaxLiquidityPerTick_PoolOld_revert == tickSpacingToMaxLiquidityPerTick_PoolNew_revert);
}

rule equivalence_of_return_value()
{
    storage init = lastStorage;
    assume_equivalent_states();
    uint128 tickSpacingToMaxLiquidityPerTick_PoolOld_uint128_out0;
    uint128 tickSpacingToMaxLiquidityPerTick_PoolNew_uint128_out0;

    env e_tickSpacingToMaxLiquidityPerTick_PoolOld; calldataarg args;
    env e_tickSpacingToMaxLiquidityPerTick_PoolNew;

    e_equivalence(e_tickSpacingToMaxLiquidityPerTick_PoolOld, e_tickSpacingToMaxLiquidityPerTick_PoolNew);

    tickSpacingToMaxLiquidityPerTick_PoolOld_uint128_out0 = tickSpacingToMaxLiquidityPerTick(e_tickSpacingToMaxLiquidityPerTick_PoolOld, args);
    tickSpacingToMaxLiquidityPerTick_PoolNew_uint128_out0 = B.tickSpacingToMaxLiquidityPerTick(e_tickSpacingToMaxLiquidityPerTick_PoolNew, args) at init;

    assert(tickSpacingToMaxLiquidityPerTick_PoolOld_uint128_out0 == tickSpacingToMaxLiquidityPerTick_PoolNew_uint128_out0);
}
