/**
 * Standard PLA Frame 16mm x 16mm
 * Model No. SPF1616
 * Script Version 1.2
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

// for corner use
CornerFrame = false;

points1 = CornerFrame
? [
    [ 2.00,  0.00],
    [14.00,  0.00],

    [16.00,  2.00],
    [16.00, 14.00],

    [14.00, 16.00],
    [ 9.60, 16.00],
    [ 9.60, 14.80],
    [10.80, 14.80],
    [10.80, 12.31],
    [10.19, 11.60],
    [ 5.81, 11.60],
    [ 5.20, 12.31],
    [ 5.20, 14.80],
    [ 6.40, 14.80],
    [ 6.40, 16.00],
    [ 2.00, 16.00],

    [ 0.00, 14.00],
    [ 0.00,  9.60],
    [ 1.20,  9.60],
    [ 1.20, 10.80],
    [ 3.69, 10.80],
    [ 4.40, 10.19],
    [ 4.40,  5.81],
    [ 3.69,  5.20],
    [ 1.20,  5.20],
    [ 1.20,  6.40],
    [ 0.00,  6.40],
    [ 0.00,  2.00]
  ]
: [
    [ 2.00,  0.00],
    [ 6.40,  0.00],
    [ 6.40,  1.20],
    [ 5.20,  1.20],
    [ 5.20,  3.69],
    [ 5.81,  4.40],
    [10.19,  4.40],
    [10.80,  3.69],
    [10.80,  1.20],
    [ 9.60,  1.20],
    [ 9.60,  0.00],
    [14.00,  0.00],

    [16.00,  2.00],
    [16.00,  6.40],
    [14.80,  6.40],
    [14.80,  5.20],
    [12.31,  5.20],
    [11.60,  5.81],
    [11.60, 10.19],
    [12.31, 10.80],
    [14.80, 10.80],
    [14.80,  9.60],
    [16.00,  9.60],
    [16.00, 14.00],

    [14.00, 16.00],
    [ 9.60, 16.00],
    [ 9.60, 14.80],
    [10.80, 14.80],
    [10.80, 12.31],
    [10.19, 11.60],
    [ 5.81, 11.60],
    [ 5.20, 12.31],
    [ 5.20, 14.80],
    [ 6.40, 14.80],
    [ 6.40, 16.00],
    [ 2.00, 16.00],

    [ 0.00, 14.00],
    [ 0.00,  9.60],
    [ 1.20,  9.60],
    [ 1.20, 10.80],
    [ 3.69, 10.80],
    [ 4.40, 10.19],
    [ 4.40,  5.81],
    [ 3.69,  5.20],
    [ 1.20,  5.20],
    [ 1.20,  6.40],
    [ 0.00,  6.40],
    [ 0.00,  2.00]
];

points2 = [
    [ 3.60,  1.20],
    [12.40,  1.20],
    [12.40,  2.19],
    [10.19,  4.40],
    [ 5.81,  4.40],
    [ 3.60,  2.19]
];

points3 = [
    [14.80,  3.60],
    [14.80, 12.40],
    [13.81, 12.40],
    [11.60, 10.19],
    [11.60,  5.81],
    [13.81,  3.60]
];

difference(){
    union(){
        render(convexity=10)
            linear_extrude(Length)
                polygon(points1);

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
    union(){
        translate([8,8,-2])
            linear_extrude(Length+4)
                circle(r=HoleDia/2, $fn=64);

        if(CornerFrame == true){
            translate([0,0,-2])
                linear_extrude(Length+4)
                    polygon(points2);

            translate([0,0,-2])
                linear_extrude(Length+4)
                    polygon(points3);
        }
    }
}
