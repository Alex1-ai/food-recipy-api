"""
Sample tests
"""


from django.test import SimpleTestCase
from app import calc


class CalcTests(SimpleTestCase):
    """Test the calc module"""
    def test_add_numbers(self):
        """Test adding numbers togeter"""
        res = calc.add(5, 6)
        self.assertEqual(res, 11)

    def test_substract_number(self):
        """"Test substracting numbers"""
        res = calc.substract(10, 15)
        self.assertEqual(res, 5)
