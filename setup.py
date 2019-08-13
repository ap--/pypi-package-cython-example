"""
python-apackage
===============

example for building packages for a python module using cython with c++

Author: Andreas Poehlmann
Email: andreas@poehlmann.io

"""
from setuptools import setup, Extension, find_packages

cstuff = Extension('apackage.stuff',
                   language='c++',
                   sources=['src/apackage/stuff.pyx', 'src/apackage/libstuff.cpp'],
                   include_dirs=['src/apackage'])

setup(
    name='apackage',
    version="1.0",
    author='Andreas Poehlmann',
    author_email='andreas@poehlmann.io',
    setup_requires=[
        'setuptools>=18.0',  # first version to support pyx in Extension
        'cython>=0.18',
    ],
    packages=find_packages(where='src'),
    package_dir={
        '': 'src'
    },
    description='Example python module with cython.',
    long_description=open('README.md').read(),
    ext_modules=[cstuff],
)
