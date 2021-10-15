# Before we get started

## Terms

### Minute of arc

1deg = 60arcminute
1arcminute = 60arcsecond
1mas = 1milliarcsecond = 0.001 arcsecond
1µas = 0.000 001arcsecond

1 arcminute is represented as 1'
1 arcsecond is represented as 1''

### Epoch and Equinox

An epoch or reference epoch is a moment in time used as a reference point for some time-varying astronomical quantity. It is useful for the celestial coordinates or orbital elements of a celestial body, as they are subject to perturbations and vary with time.

The current standard equinox is J2000.0, which refers to the instant of 12 noon (midday) on January 1, 2000.

[^1]: https://en.wikipedia.org/wiki/Epoch_(astronomy)
[^2]: (https://en.wikipedia.org/wiki/Equinox_(celestial_coordinates))

### barycenter

barycenter is the center of mass of two objects that orbit each other

[Barycenter](https://en.wikipedia.org/wiki/Barycenter)

### topocentric coordinates

topocentric coordinates have their origin at a point in the Earth's surface

### Celestial Sphere

Celestial Sphere is an imaginary sphere that has larger radius and has Earth in it's center. All objects in the sky are projected on the surface of the sphere 

### Celestial Poles

Celestial Poles are two imaginary points in the sky where the Earth's North and South Pole would intersect if indefinitely extended.

### Celestial Equator

Celestial equator is the imaginary circle in the celestial sphere on the same plane as the Earth's equator

### Right Ascension

Right ascension is the angular distance measured eastward along the celestial equator from the Sun at the March equinox to the point in question above the earth.

### Declination

Declination is measured either north or south of the celestial equator, along the hour circle of the point in question

# Coordinate System

### Equitorial Coordinate System

#### ICRS (International Celestial Reference System)

ICRS is the current standard celestial reference system, it has it's origin at the barycenter of the Solar System[^1]. It's axes are fixed with reference to the stars to the quasars within +/- 20 microarcseconds[^2].

[^1]:https://en.wikipedia.org/wiki/International_Celestial_Reference_System_and_Frame
[^2]:https://www.iers.org/IERS/EN/Science/ICRS/ICRS.html

#### FK5 system

Prior to J2000.0 this system was used

### Galactic Coordinate System

The Galactic Coordinate System is a celestial coordinate system using spherical coordinates with the Sun at it's center, the primary direction aligned with the center of the Milky Way.

#### LSR

The LSR, local standard of rest follows the mean motion of material in the Milky Way


### Hands on in Sky Coordinates with Astropy

Sky position can be represented in ICRS[^1] (Right ascension [RA], Declination [Dec])

```py
from astropy import units as u
from astropy.coordinates import SkyCoord

# Location of PKS 1934-638
pks_1934_638 = SkyCoord.from_name("PKS 1934-638")
pks_1934_638
# <SkyCoord (ICRS): (ra, dec) in deg
#    (294.85427796, -63.71267375)>

c_icrs = SkyCoord(-1.1370067985279546, -1.1119959200661205, unit='rad')
# <SkyCoord (ICRS): (ra, dec) in deg
#    (294.85430917, -63.71267306)>

c_angle_deg = SkyCoord('19h39m25.027', '-63 42 45.61', unit=(u.hourangle, u.deg))
# <SkyCoord (ICRS): (ra, dec) in deg
#    (294.85427917, -63.71266944)>

c_icrs.galactic 

c_fk5 = c_icrs.transform_to('fk5')

from astropy.coordinates import FK5
c_fk5.transform_to(FK5(equinox='J1975'))
```

`EarthLocation.of_address`

### Jansky

Jansky is a unit of spectral flux density. It is equal to $$10^-26$$ watts per square meter per hertz

The brightest astronomical radio sources have a flux density of 1 to 100 Jy.

### ephemerides and geodetic

In astronomy, an ephemerides gives the trajectory of natural astronomical objects. The oldest ephemerides is from 1st millennium BC

[^1]https://en.wikipedia.org/wiki/Ephemeris

### Affine Transforms

Affine transform is a geometric transform that preserves lines and parallelism.

https://astronomy.stackexchange.com/questions/33793/difference-between-j2000-fk5-and-icrs-coordinate-systems-which-one-does-the-ya



### convolution

- [Convolution](http://songho.ca/dsp/convolution/convolution.html)
- [2D Convolution example](http://songho.ca/dsp/convolution/convolution2d_example.html)

# Radio Astronomy

- [Radio Astronomy](http://aramis.obspm.fr/~salome/alma/lecture.pdf)
- [Interferometry](https://www.eso.org/sci/meetings/2015/eris2015/L1_Jackson_Interferometry.pdf)

# Measurement Set

# Measurement Equation

[Measurement Equation](https://casadocs.readthedocs.io/en/stable/notebooks/casa-fundamentals.html#Measurement-Equation) and the need for calibration

# Imaging

## FITS

fits[^1] is the standard data format used in astronomy. A structure of a FITS file[^2] is as follows

- Primary header and data unit(HDU)
- Conforming Extensions (optional)
- Other records (optional)

An example header

```python
from astropy.utils.data import get_pkg_data_filename
from astropy.io import fits

image_file = get_pkg_data_filename('image.i.1934-638.beam00.taylor.0.restored.fits')

fits.info(image_file)
```

    Filename: image.i.1934-638.beam00.taylor.0.restored.fits
    No.    Name      Ver    Type      Cards   Dimensions   Format
      0  PRIMARY       1 PrimaryHDU      60   (2048, 2048, 1, 1)   float32   



[^1]https://fits.gsfc.nasa.gov/fits_documentation.html
[^2]https://fits.gsfc.nasa.gov/standard40/fits_standard40aa-le.pdf

## Concept

A telescope pair is called baselines. The samples from a baselines are called visibilities.
Each visibility has an associated (u, v, w) associated with it. After correlation, the visibilities are sampled in Fourier domain and placed in a UV grid. A 2D FFT converts this into the sky image


## Fun thing to do

http://tdc-www.harvard.edu/catalogs/bsc5.html
