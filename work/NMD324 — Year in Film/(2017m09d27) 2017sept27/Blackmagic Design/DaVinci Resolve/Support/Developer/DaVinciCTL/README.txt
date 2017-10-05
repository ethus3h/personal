In this package, you can find a brief introduction to the DaVinci Color Transform Language (DCTL). You can also find a few simple examples
showing how to use it for user-defined color transformations.

DaVinci Color Transformation Language has a C like syntax with the addition of a few DCTL keywords. This enables the user to define the
required color transformation and use it in the color correction node. This can be done in three easy steps as listed below.

1. Put the DCTL code in a file with the ".dctl" extension
2. Copy the file to the DaVinci Resolve LUT directory
   - /Library/Application Support/Blackmagic Design/DaVinci Resolve/LUT (for Mac)
   - C:\ProgramData\Blackmagic Design\DaVinci Resolve\Support\LUT (for Windows)
   - /home/resolve/LUT (for Linux)
3. On the Resolve Color page, right click on the color correction node. The DCTL should be listed under the menu item "DaVinci CTL".

The DCTL file must contain the main entry function "transform" that returns a float3 value with one of the following signatures.
(NOTE: The signature should match exactly, including the variable names.)

1. __DEVICE__ float3 transform(int p_Width, int p_Height, int p_X, int p_Y, float p_R, float p_G, float p_B)
2. __DEVICE__ float3 transform(int p_Width, int p_Height, int p_X, int p_Y, __TEXTURE__ p_TexR, __TEXTURE__ p_TexG, __TEXTURE__ p_TexB)

This "transform" function performs the color transformation on one pixel with the coordinates (p_X, p_Y) on an image of size p_Width by
p_Height. In the case of the first signature, the RGB values of the input pixel are supplied in (p_R, p_G, p_B). For the second signature,
instead of the RGB values, the texture reference to the RGB planes are given. These texture references allow the user to request the
RGB values of any pixel within the image. This can be done by calling _tex2D(p_TexName, p_X, p_Y), which returns a float value. In both
cases, the "transform" function must return a float3 RGB value for one pixel with the coordinates (p_X, p_Y) on the image.

__DEVICE__ is used to indicate that it is a function. __TEXTURE__ is used to indicate that it is a texture reference.

floatN is a vector of N floats, where N can be 2, 3 or 4. With a float4 value (sample), the elements can be accessed by sample.x, sample.y,
sample.z and sample.w. To generate a vector value use make_floatN(), where N can be 2, 3 or 4.

In addition to the main entry function, there could be additional functions that can be called from the main entry function. Similar to
the main entry function, __DEVICE__ is prepended to the function definition. For example, __DEVICE__ float2 DoSomething(). These additional
functions have to be defined before the main entry function in the DCTL file.

Structure can be defined using "typedef struct", as shown in the following example.
    typedef struct
    {
        float c00, c01, c02;
        float c10, c11, c12;
    } Matrix;

To declare constant memory, use __CONSTANT__. e.g:
    __CONSTANT__ float NORM[] = {1.0f / 3.0f, 1.0f / 3.0f, 1.0f / 3.0f};

To pass the constant memory as a function argument, use __CONSTANTREF__ qualifier. e.g:
    __DEVICE__ float DoSomething(__CONSTANTREF__ float* p_Params)


List of floating-point math functions available
-----------------------------------------------
- float _fabs(float x)                          // Returns the absolute value of x
- float _powf(float x, float y)                 // Computes x raised to the power of y
- float _logf(float x)                          // Computes the value of the natural logarithm of x
- float _log2f(float x)                         // Computes the value of the logarithm of x to base 2
- float _log10f(float x)                        // Computes the value of the logarithm of x to base 10
- float _expf(float x)                          // Computes e**x, the base-e exponential of x
- float _exp2f(float x)                         // Computes 2**x, the base-2 exponential of x
- float _exp10f(float x)                        // Computes 10**x, the base-10 exponential of x
- float _copysignf(float x, float y)            // Returns x with its sign changed to y's
- float _fmaxf(float x, float y)                // Returns x or y, whichever is larger
- float _fminf(float x, float y)                // Returns x or y, whichever is smaller
- float _clampf(float x, float min, float max)  // Clamps x to be within the interval [min, max]
- float _saturatef(float x)                     // Clamps x to be within the interval [0.0f, 1.0f]
- float _sqrtf(float x)                         // Computes the non-negative square root of x
- float _ceil(float x)                          // Returns the smallest integral value greater than or equal to x
- float _floor(float x)                         // Returns the largest integral value less than or equal to x
- float _trunc(float x)                         // Returns the integral value nearest to but no larger in magnitude than x
- float _round(float x)                         // Returns the integral value nearest to x rounding, with half-way cases rounded away from zero
- float _fmod(float x, float y)                 // Computes the floating-point remainder of x/y
- float _fremainder(float x, float y)           // Computes the value r such that r = x - n*y, where n is the integer nearest the exact value of x/y
- float _hypotf(float x, float y)               // Computes the square root of the sum of squares of x and y
- float _cosf(float x)                          // Computes the cosine of x (measured in radians)
- float _sinf(float x)                          // Computes the sine of x (measured in radians)
- float _tanf(float x)                          // Computes the tangent of x (measured in radians)
- float _acosf(float x)                         // Computes the principle value of the arc cosine of x
- float _asinf(float x)                         // Computes the principle value of the arc sine of x
- float _atan2f(float y, float x)               // Computes the principal value of the arc tangent of y/x, using the signs of both arguments to
                                                //     determine the quadrant of the return value
- float _acoshf(float x)                        // Computes the principle value of the inverse hyperbolic cosine of x
- float _asinhf(float x)                        // Computes the principle value of the inverse hyperbolic sine of x
- float _atanhf(float x)                        // Computes the inverse hyperbolic tangent of x
- float _coshf(float x)                         // Computes the hyperbolic cosine of x
- float _sinhf(float x)                         // Computes the hyperbolic sine of x
- float _tanhf(float x)                         // Computes the hyperbolic tangent of x
- float _cbrtf(float x)                         // Computes the cube root of x
- float _fdimf(float x, float y)                // Returns the positive difference between x and y:  x - y if x > y, +0 if x is less than or equal to y
- float _fmaf(float x, float y, float z)        // Computes (x * y) + z as a single operation
- float _lgammaf(float x)                       // Computes the natural logorithm of the absolute value of the gamma function of x
- float _tgammaf(float x)                       // Computes the gamma function of x
- float _rsqrtf(float x)                        // Computes the reciprocal of square root of x
- float _fdivide(float x, float y)              // Returns x/y
- float _frecip(float x)                        // Returns 1/x
- int isinf(float x)                            // Returns a non-zero value if and only if x is an infinite value
- int isnan(float x)                            // Returns a non-zero value if and only if x is a NaN value
- int signbit(float x)                          // Returns a non-zero value if and only if sign bit of x is set

An additional note that float values must have 'f' character at the end (e.g. 1.2f).


List of integer math functions available
----------------------------------------
- int abs(int x)                                // Returns the absolute value of x
- int min(int x, int y)                         // Returns x or y, whichever is smaller
- int max(int x, int y)                         // Returns x or y, whichever is larger


