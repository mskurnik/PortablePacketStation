# Portable Packet Station

## Introduction
<img alt="Portable Packet Station" src="renders/Correctly Sized Case v26 - Colorized.png" width="350" style="padding: 0 0 0 10px" align="right" />

Full documentation is avialble in the [Portable Modular Packet Go-Box for Amateur Radio - Guide.pdf](/Portable%20Modular%20Packet%20Go-Box%20for%20Amateur%20Radio%20-%20Guide.pdf) file.

Starting in the Fall of 2020, I thought up the idea of a modular system for creating a portable go-box.  I wanted something where everything (minus power) was self-contained and except for attaching antennas, nothing needed to be setup.  I wanted it to be as simple as opening the box, connecting the antennas, power cable, and then being able to use it immediately.

The following skills were necessary to complete this project:
- Familiarity with CAD (although you may not need it since I will provide the files)
- Access to CAD software
- Familiarity with Linux
- Basic soldering

I do not own a 3D printer, if I had, this project would have been easier to build.  I decided to build the entire thing out of aluminum, but you can easily convert all of this to work with a 3D printer instead.  The cost may be cheaper to do so.  Also, if you have access to a CNC router, you do not need to send this out for laser cutting.

## My Requirements

I had simple requirements for the entire project:

1. Total cost of materials should be as inexpensive as possible.  Amateur radio is already an expensive hobby and building a box that you may not use that often should as inexpensive as possible.
2. As few specialty tools as possible needed.
3. No exceptional skills required such as welding.
4. Except for the power source and antennas, everything should fit within the enclosure.
5. Enclosure should be waterproof and as light as possible.
6. Controllable via a phone.
7. Three radios including an HF radio station.

## Parts List

The prices below are what I paid for at the time and your price may vary.  These prices also reflect buying only the necessary number of parts and does not always include spare parts.  I have included links where available.

QTY    | Description | Supplier | Price  | Sub Total
-----: | :---------- | :------- | -----: | --------:
1 | 12V to 5V USB Type-C right angle buck converter 15W | [Amazon](https://www.amazon.com/gp/product/B086KTGRH1) | $14 | $14
1 | 12-way fuse block | [Amazon](https://www.amazon.com/gp/product/B095HS284K/) | $15 | $15
1 | 80mm Computer Fan Filter Grills | [Amazon](https://www.amazon.com/gp/product/B07LG41F1K) | $13 | $13
1 | FTDI USB Programming Cable for Kenwood TM-V71 | [Amazon](https://www.amazon.com/gp/product/B01LZPX7C5) | $29 | $29
1 | Geekworm Raspberry Pi 4 Aluminum Case | [Amazon](https://www.amazon.com/gp/product/B07X5Y81C6/) | $27 | $27
1 | Geekworm Raspberry Pi UPS | [Amazon](https://www.amazon.com/gp/product/B087FXLZZH) | $46 | $46
1 | M2.5 Male Female Hex Brass Spacer Standoff set | [Amazon](https://www.amazon.com/gp/product/B075K3QBMX) | $13 | $13
1 | M3x8mm Machine screws hex socket (50 pcs) | [Amazon](https://www.amazon.com/gp/product/B07Q4N4V1V/) | $8 | $8
1 | M8 50mm Screws | [Amazon](https://www.amazon.com/gp/product/B09BMXNR7K/) | $11 | $11
2 | MakerBeam 25 Pieces T-Slot Nuts w/Screws | [Amazon](https://www.amazon.com/gp/product/B016OJNLJ2/) | $18 | $35
4 | MakerBeam 300x10x10mm Beam Black anodized (4 pcs) | [Amazon](https://www.amazon.com/gp/product/B00G2DNU4M/) | $15 | $58
2 | MakerBeam Corner Cube Black 12 pcs | [Amazon](https://www.amazon.com/gp/product/B00OWGOMG6) | $22 | $44
1 | MakerBeam M3 Bolts with Square Head, 6mm (250 pack) | [Amazon](https://www.amazon.com/gp/product/B00G2DNW3G/) | $16 | $16
2 | MakerBeam OpenBeam Right Angle Bracket (12pcs) | [Amazon](https://www.amazon.com/gp/product/B00HUOJPUU) | $8 | $16
3 | Male PL-259 to Male PL-259 12" jumper cable | [Amazon](https://www.amazon.com/dp/product/B07H584XTK/) | $8 | $24 
2 | Nagoya UT-72 19-Inch Magnetic Mount Antenna | [Amazon](https://www.amazon.com/gp/product/B016SIJX28/) | $35 | $70
1 | Raspberry Pi 4B 8GB Kit w/microSD Card | Amazon | $120 | $120
1 | SO-239 Adapter Bulkhead Panel Mount (4 pcs) | [Amazon](https://www.amazon.com/gp/product/B07RFQZWYX) | $13 | $13
1 | Super Antenna MP1DXTR80 HF SuperWhip | Amazon | $267 | $267
1 | USB GPS Dongle | [Amazon](https://www.amazon.com/gp/product/B07GJGSZB9/) | $14 | $14
1 | USB Panel Mount adapter | [Amazon](https://www.amazon.com/gp/product/B079957VC3/) | $19 | $19
1 | USB to fan PWM Cable | [Amazon](https://www.amazon.com/gp/product/B01LW50R03/) | $8 | $8
1 | FTDI USB Programming cable for TK-762HG | [eBay](https://www.ebay.com/itm/152805165543) | $30 | $30
1 | Kenwood TK-762HG VHF Mobile Radio | eBay | $60 | $60
1 | Kenwood TM-V71A VHF/UHF Radio | eBay | $330 | $330
3 | TNC-Pi9k6 - Raspberry Pi Hat w/Teensy 3.6 | [Etsy](https://www.etsy.com/listing/780520640/tnc-pi9k6-raspberry-pi-hat-wteensy-36) | $82 | $246
1 | TNC interface cable for TK-762HG | [Ham Made Parts](https://hammadeparts.com/shop-for-cables/ols/products/kenwood-rj-45-mic-plug-and-18-speaker-plug-to-db9-kantronics-type) | $35 | $35
1 | TNC interface cable for TM-V71A | [Ham Made Parts](https://hammadeparts.com/shop-for-cables) | $30 | $30
1 | TNC interface cable for Xiegu G90 | [Ham Made Parts](https://hammadeparts.com/shop-for-cables) | $50 | $50
1 | Aluminum Rivets 3/32" For 0.251"-0.375" Thickness | [McMaster-Carr](https://www.mcmaster.com/97447A450/) | $16 | $16 
1 | Monoprice Emperor 20 Portable Cooler 5 Gal | [Monoprice](https://www.monoprice.com/product?p_id=39159) | $75 | $75
1 | Xiegu G90 20W HF Radio | [Radioddity](https://www.radioddity.com/products/xiegu-g90-hf-transceiver) | $425 | $425
1 | Complete set of laser-cut parts | [Send Cut Send](https://www.sendcutsend.com/) | $37 | $37
46 |  |  | **Total:** | $2,249