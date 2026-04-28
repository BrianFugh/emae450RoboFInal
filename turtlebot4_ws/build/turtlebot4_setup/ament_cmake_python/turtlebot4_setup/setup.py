from setuptools import find_packages
from setuptools import setup

setup(
    name='turtlebot4_setup',
    version='2.0.3',
    packages=find_packages(
        include=('turtlebot4_setup', 'turtlebot4_setup.*')),
)
