# Programming Aids

1. Decimal number-binary floating point representation conversion worksheets

    1. What is it?

        SSIA.

        The Excel worksheets are composed of two parts: decimal (say, 0.5) to 32-bit floating point representation in hexadecimal and vice-versa.

        Interconversion to and from floating point representation is cumbersome but necessary for Am9511A  programming. I hope the worksheets help (at least, it works for me).

    1. How to use it?

        The worksheets are self explanatory (I hope so).

2. hex2data

    1. What is it?

        This python script (hex2data.py) exports data from Intel HEX to BASIC (CSV starting with line number and 'DATA' statement).

        It assumes that you have already installed Python 3.

    2. How to use it?

        python hex2data.py *filename* -n *line number* -i *line number increment*

        + *filename* : a file in Intel HEX format

        + *line number* : (optional) starting line number is 1000, if omitted.

        + *line number increment* : (optional) line number increment is 10, if omitted.