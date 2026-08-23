from main import Calculator
def test_sum_2_numbers():
    assert Calculator().sum(2, 2) == 4
# se adiciono 
def test_sum_3_numbers():
    assert Calculator().sum(2, 3) == 5