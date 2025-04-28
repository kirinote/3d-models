/**
 * Standard PLA Frame 16mm x 16mm
 * Model No. SPF1616
 *
 * Designed by Kirimaru
 *
 * The slit on the side can be used to insert an M3 nuts.
 * For correct printing, it is recommended to reduce the
 * print speed.
 *
 * This code is licensed under CC0.
 * https://creativecommons.org/publicdomain/zero/1.0/deed.en
 */

// total length
Length = 20;

// hole diameter, defined for M3 insert nut
HoleDia = 4.6;

points = [
    [ 2.00,  0.00],
    [ 6.40,  0.00],
    [ 6.40,  1.20],
    [ 5.10,  1.20],
    [ 5.10,  3.69],
    [ 5.81,  4.40],
    [10.19,  4.40],
    [10.90,  3.69],
    [10.90,  1.20],
    [ 9.60,  1.20],
    [ 9.60,  0.00],
    [14.00,  0.00],

    [16.00,  2.00],
    [16.00,  6.40],
    [14.80,  6.40],
    [14.80,  5.10],
    [12.31,  5.10],
    [11.60,  5.81],
    [11.60, 10.19],
    [12.31, 10.90],
    [14.80, 10.90],
    [14.80,  9.60],
    [16.00,  9.60],
    [16.00, 14.00],

    [14.00, 16.00],
    [ 9.60, 16.00],
    [ 9.60, 14.80],
    [10.90, 14.80],
    [10.90, 12.31],
    [10.19, 11.60],
    [ 5.81, 11.60],
    [ 5.10, 12.31],
    [ 5.10, 14.80],
    [ 6.40, 14.80],
    [ 6.40, 16.00],
    [ 2.00, 16.00],

    [ 0.00, 14.00],
    [ 0.00,  9.60],
    [ 1.20,  9.60],
    [ 1.20, 10.90],
    [ 3.69, 10.90],
    [ 4.40, 10.19],
    [ 4.40,  5.81],
    [ 3.69,  5.10],
    [ 1.20,  5.10],
    [ 1.20,  6.40],
    [ 0.00,  6.40],
    [ 0.00,  2.00]
];

difference(){
    union(){
        render(convexity=10)
            linear_extrude(Length)
                polygon(points);

        translate([2,2,0])
            linear_extrude(Length)
                circle(r=2, $fn=64);

        translate([14,2,0])
            linear_extrude(Length)
                circle(r=2, $fn=64);

        translate([14,14,0])
            linear_extrude(Length)
                circle(r=2, $fn=64);

        translate([2,14,0])
            linear_extrude(Length)
                circle(r=2, $fn=64);
    }

    translate([8,8,-2])
        linear_extrude(Length+4)
            circle(r=HoleDia/2 , $fn=64);
}
