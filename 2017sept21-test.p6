#!/usr/bin/env perl6


    use v6.c;

    use Test;


    grammar EM {

        token TOP { <block> }

        token block { [<simpleBlock>\nblock]|<simpleBlock> }

        token simpleBlock { <line>*<finalLine>? }


        token line { " "*<lineContents>\n }

        token finalLine { " "*<lineContents> }

        token lineContents { <declaration>|<invocation>|[''] }


        token escapedString { [\w|[\\\N]]+ }

        token literal { <number> }

        token number { \d+ }


        token value { <literal> | <identifier> | <invocation> }

        token declaration {

            [ <identifier>[\=<value>]? ] |

            [ <identifier> ' ' \= ' ' <value> ]

        }


        token type {

            'String' |

            \*

        }

        token normalIdentifier {

            [[<type>\x20]?<escapedString>]

        }

        token routineIdentifier {

            <normalIdentifier><parameterList>

        }

        token identifier {

            <normalIdentifier> |

            <routineIdentifier>

        }


        token invocation {

            <routineIdentifier> ' '? <parameterList>

        }


        token parameter {

            <type> |

            [ <declaration> \?? ] |

            <value>

        }

        token parameterList {

            [

                ' '? \( <parameterListBody> \) |

                ' ' <parameterListBody>

            ]

        }

        token parameterListSeparator {

            \,? ' '

        }

        token parameterListItem {

            <parameter> <parameterListSeparator>

        }

        token parameterListFilledBody {

            <parameterListItem>* <parameter>

        }

        token parameterListBody {

            <parameterListFilledBody> |

            ''

        }

    }


    use Test;

    ok EM.parse('String qux?', :rule<parameter>).Str;

    is EM.subparse('String qux?, ', :rule<parameter>).Str, 'String qux?';

    ok EM.subparse(', ', :rule<parameterListSeparator>);

    ok EM.parse('String qux?, ', :rule<parameterListItem>);
