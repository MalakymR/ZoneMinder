package ONVIF::PTZ::Types::RecordingJobConfiguration;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %RecordingToken_of :ATTR(:get<RecordingToken>);
my %Mode_of :ATTR(:get<Mode>);
my %Priority_of :ATTR(:get<Priority>);
my %Source_of :ATTR(:get<Source>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        RecordingToken
        Mode
        Priority
        Source
        Extension

    ) ],
    {
        'RecordingToken' => \%RecordingToken_of,
        'Mode' => \%Mode_of,
        'Priority' => \%Priority_of,
        'Source' => \%Source_of,
        'Extension' => \%Extension_of,
    },
    {
        'RecordingToken' => 'ONVIF::PTZ::Types::RecordingReference',
        'Mode' => 'ONVIF::PTZ::Types::RecordingJobMode',
        'Priority' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'Source' => 'ONVIF::PTZ::Types::RecordingJobSource',
        'Extension' => 'ONVIF::PTZ::Types::RecordingJobConfigurationExtension',
    },
    {

        'RecordingToken' => 'RecordingToken',
        'Mode' => 'Mode',
        'Priority' => 'Priority',
        'Source' => 'Source',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::RecordingJobConfiguration

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RecordingJobConfiguration from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * RecordingToken


=item * Mode


=item * Priority


=item * Source


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::RecordingJobConfiguration
   RecordingToken => $some_value, # RecordingReference
   Mode => $some_value, # RecordingJobMode
   Priority =>  $some_value, # int
   Source =>  { # ONVIF::PTZ::Types::RecordingJobSource
     SourceToken =>  { # ONVIF::PTZ::Types::SourceReference
       Token => $some_value, # ReferenceToken
     },
     AutoCreateReceiver =>  $some_value, # boolean
     Tracks =>  { # ONVIF::PTZ::Types::RecordingJobTrack
       SourceTag =>  $some_value, # string
       Destination => $some_value, # TrackReference
     },
     Extension =>  { # ONVIF::PTZ::Types::RecordingJobSourceExtension
     },
   },
   Extension =>  { # ONVIF::PTZ::Types::RecordingJobConfigurationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

