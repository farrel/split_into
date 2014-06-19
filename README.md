# SplitInto

## Overview

SplitInto is a micro API whose sole purpose is to split an integer into equal or roughly equal parts. This is useful when dealing with objects that are not well suited to being split into fractional parts.

For instance  8 cents can not be split into 3 parts equally due to the lack of 1/2 cent coins, but can be split into roughly equal parts of 2c, 3c and 3c. Using SplitInto this would be written as: 

    SplitInto.split(8,3) # [2, 3, 3]

9 cents can be split equally
    
    SplitInto.split(9,3) # [3, 3, 3]

The part components will never differ by more than 1.

This was written partly to dogfood `simplecheck` and see what changes it requires in a real API.

## Installation
  
    gem install split_into

## Usage

SplitInto can either act as a standalone module or as an extension of the Integer class.

As a standalone module:

    require 'split_into'

    SplitInto.split(8,4) # [2, 2, 2, 2]

To extend integer include `split_into/extend_integer`.

    require 'split_into/extend_integer'

    10.split_into(4) # [2, 2, 3, 3]

If an integer can not be split a `SplitInto::SplitError` exception is raised.

    begin
      SplitInto.split(10,-2) 
    rescue SplitInto::SplitError => exception
      puts exception.message # 'Divisor is less than zero'
    end

## License

SplitInto is distributed under the BSD License. See LICENSE file for details.

## Copyright

2014 Aimred CC. All rights reserved.
