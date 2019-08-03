""" Tests for calc.py """

import unittest
import calc

class TestCalc(unittest.TestCase):

    def test_add(self):
        self.assertEqual(calc.add(10, 10), 20)
        self.assertEqual(calc.add(-10, -10), -20)
        self.assertEqual(calc.add(-10, 2), -8)


    def test_subtract(self):
        self.assertEqual(calc.subtract(10, 1), 9)
        self.assertEqual(calc.subtract(-1, 0), -1)
        self.assertEqual(calc.subtract(-5, -100), 95)


    def test_multiply(self):
        self.assertEqual(calc.multiply(10, 10), 100)
        self.assertEqual(calc.multiply(-10, 3), -30)
        self.assertEqual(calc.multiply(-10, -10), 100)


    def test_divide(self):
        self.assertEqual(calc.divide(10, 5), 2)
        self.assertEqual(calc.divide(-10, -10), 1)
        self.assertEqual(calc.divide(0, 10), 0)

