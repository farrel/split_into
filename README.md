# SplitInto

## Overview

SplitInto is a small API whose sole purpose is to split an integer into equal or roughly equal parts. This is useful when dealing with objects that are not well suited to being split into fractional parts.

For instance  8 cents can not be split into 3 parts equally due to the lack of 1/2 cent coins, but can be split into roughly equal parts of 2c, 3c and 3c. Using SplitInto this would be written as: 

    SplitInto.split(8,3) # => [2, 3, 3]

The part components will never differ by more than 1.

This was written partly to dogfood `simplecheck` and see what changes it requires in a real API.

## Installation
  
    gem install split_into

## Usage

SplitInto can either act as a standalone module or as an extension of the Integer class.

As a standalone module:

    require 'split_into'

    SplitInto.split(10,4)

To extend integer include `split_into/extend_integer`.

    require 'split_into/extend_integer'

    10.split_into(4)

## License

SplitInto is distributed under the BSD License.

