from alive_check import parse


def test_solver_exhaustion_is_inconclusive():
    log = 'define i32 @target_x() {\nERROR: SMT Error: out of memory\n'
    assert parse(log)['target_x'].startswith('failed:')
    log = 'define i32 @target_x() {\nERROR: SMT Error: smt tactic failed to show goal to be sat/unsat memout\n'
    assert parse(log)['target_x'].startswith('failed:')


if __name__ == '__main__':
    test_solver_exhaustion_is_inconclusive()
