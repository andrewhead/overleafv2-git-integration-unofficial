from setuptools import setup

setup(
    name='overleafv2_git',
    version='1.0',
    scripts=['overleafv2-git'],
    install_requires=[
        'requests',
        'bs4',
    ],
)
