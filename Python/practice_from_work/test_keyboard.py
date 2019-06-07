""" tests for Keyboard.py """

from Keyboard import Keyboard
import pytest

def test_keyboard_init():
    keyboard = Keyboard("reds", "dolch", "ergodox")

    assert keyboard.switch_type == "reds"
    assert keyboard.keycap_set == "dolch"
    assert keyboard.keyboard_type == "ergodox"

def test_user_input():
    # kb will be used to set variables
    keyboard = Keyboard("reds", "dolch", "ergodox")