package ONVIF::Analytics::Types::ImagingOptions20Extension;
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

my %ImageStabilization_of :ATTR(:get<ImageStabilization>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        ImageStabilization
        Extension

    ) ],
    {
        'ImageStabilization' => \%ImageStabilization_of,
        'Extension' => \%Extension_of,
    },
    {
        'ImageStabilization' => 'ONVIF::Analytics::Types::ImageStabilizationOptions',
        'Extension' => 'ONVIF::Analytics::Types::ImagingOptions20Extension2',
    },
    {

        'ImageStabilization' => 'ImageStabilization',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Analytics::Types::ImagingOptions20Extension

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ImagingOptions20Extension from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ImageStabilization


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Analytics::Types::ImagingOptions20Extension
   ImageStabilization =>  { # ONVIF::Analytics::Types::ImageStabilizationOptions
     Mode => $some_value, # ImageStabilizationMode
     Level =>  { # ONVIF::Analytics::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
     Extension =>  { # ONVIF::Analytics::Types::ImageStabilizationOptionsExtension
     },
   },
   Extension =>  { # ONVIF::Analytics::Types::ImagingOptions20Extension2
     IrCutFilterAutoAdjustment =>  { # ONVIF::Analytics::Types::IrCutFilterAutoAdjustmentOptions
       BoundaryType =>  $some_value, # string
       BoundaryOffset =>  $some_value, # boolean
       ResponseTimeRange =>  { # ONVIF::Analytics::Types::DurationRange
         Min =>  $some_value, # duration
         Max =>  $some_value, # duration
       },
       Extension =>  { # ONVIF::Analytics::Types::IrCutFilterAutoAdjustmentOptionsExtension
       },
     },
     Extension =>  { # ONVIF::Analytics::Types::ImagingOptions20Extension3
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

