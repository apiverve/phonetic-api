from setuptools import setup, find_packages

setup(
    name='apiverve_phoneticencoder',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Phonetic Encoder generates phonetic codes for words using Soundex and Metaphone algorithms. These codes represent how words sound, enabling fuzzy matching of similar-sounding names.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
