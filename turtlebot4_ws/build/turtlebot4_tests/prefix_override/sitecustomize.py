import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/brian/robo450/lesson_enae450_s26/turtlebot4_ws/install/turtlebot4_tests'
