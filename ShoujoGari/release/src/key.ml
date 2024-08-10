(* 
   Majiro's "decryption" key.

   This program is free software; you can redistribute it and/or modify it under
   the terms of the GNU General Public License as published by the Free Software
   Foundation; either version 2 of the License, or (at your option) any later
   version.

   This program is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
   FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
   details.

   You should have received a copy of the GNU General Public License along with
   this program; if not, write to the Free Software Foundation, Inc., 59 Temple
   Place - Suite 330, Boston, MA  02111-1307, USA.
*)
 
let key = [| 0x00; 0x00; 0x00; 0x00; 0x96; 0x30; 0x07; 0x77; 0x2c; 0x61; 0x0e; 0xee; 0xba; 0x51; 0x09; 0x99;
             0x19; 0xc4; 0x6d; 0x07; 0x8f; 0xf4; 0x6a; 0x70; 0x35; 0xa5; 0x63; 0xe9; 0xa3; 0x95; 0x64; 0x9e;
             0x32; 0x88; 0xdb; 0x0e; 0xa4; 0xb8; 0xdc; 0x79; 0x1e; 0xe9; 0xd5; 0xe0; 0x88; 0xd9; 0xd2; 0x97;
             0x2b; 0x4c; 0xb6; 0x09; 0xbd; 0x7c; 0xb1; 0x7e; 0x07; 0x2d; 0xb8; 0xe7; 0x91; 0x1d; 0xbf; 0x90;
             0x64; 0x10; 0xb7; 0x1d; 0xf2; 0x20; 0xb0; 0x6a; 0x48; 0x71; 0xb9; 0xf3; 0xde; 0x41; 0xbe; 0x84;
             0x7d; 0xd4; 0xda; 0x1a; 0xeb; 0xe4; 0xdd; 0x6d; 0x51; 0xb5; 0xd4; 0xf4; 0xc7; 0x85; 0xd3; 0x83;
             0x56; 0x98; 0x6c; 0x13; 0xc0; 0xa8; 0x6b; 0x64; 0x7a; 0xf9; 0x62; 0xfd; 0xec; 0xc9; 0x65; 0x8a;
             0x4f; 0x5c; 0x01; 0x14; 0xd9; 0x6c; 0x06; 0x63; 0x63; 0x3d; 0x0f; 0xfa; 0xf5; 0x0d; 0x08; 0x8d;
             0xc8; 0x20; 0x6e; 0x3b; 0x5e; 0x10; 0x69; 0x4c; 0xe4; 0x41; 0x60; 0xd5; 0x72; 0x71; 0x67; 0xa2;
             0xd1; 0xe4; 0x03; 0x3c; 0x47; 0xd4; 0x04; 0x4b; 0xfd; 0x85; 0x0d; 0xd2; 0x6b; 0xb5; 0x0a; 0xa5;
             0xfa; 0xa8; 0xb5; 0x35; 0x6c; 0x98; 0xb2; 0x42; 0xd6; 0xc9; 0xbb; 0xdb; 0x40; 0xf9; 0xbc; 0xac;
             0xe3; 0x6c; 0xd8; 0x32; 0x75; 0x5c; 0xdf; 0x45; 0xcf; 0x0d; 0xd6; 0xdc; 0x59; 0x3d; 0xd1; 0xab;
             0xac; 0x30; 0xd9; 0x26; 0x3a; 0x00; 0xde; 0x51; 0x80; 0x51; 0xd7; 0xc8; 0x16; 0x61; 0xd0; 0xbf;
             0xb5; 0xf4; 0xb4; 0x21; 0x23; 0xc4; 0xb3; 0x56; 0x99; 0x95; 0xba; 0xcf; 0x0f; 0xa5; 0xbd; 0xb8;
             0x9e; 0xb8; 0x02; 0x28; 0x08; 0x88; 0x05; 0x5f; 0xb2; 0xd9; 0x0c; 0xc6; 0x24; 0xe9; 0x0b; 0xb1;
             0x87; 0x7c; 0x6f; 0x2f; 0x11; 0x4c; 0x68; 0x58; 0xab; 0x1d; 0x61; 0xc1; 0x3d; 0x2d; 0x66; 0xb6;
             0x90; 0x41; 0xdc; 0x76; 0x06; 0x71; 0xdb; 0x01; 0xbc; 0x20; 0xd2; 0x98; 0x2a; 0x10; 0xd5; 0xef;
             0x89; 0x85; 0xb1; 0x71; 0x1f; 0xb5; 0xb6; 0x06; 0xa5; 0xe4; 0xbf; 0x9f; 0x33; 0xd4; 0xb8; 0xe8;
             0xa2; 0xc9; 0x07; 0x78; 0x34; 0xf9; 0x00; 0x0f; 0x8e; 0xa8; 0x09; 0x96; 0x18; 0x98; 0x0e; 0xe1;
             0xbb; 0x0d; 0x6a; 0x7f; 0x2d; 0x3d; 0x6d; 0x08; 0x97; 0x6c; 0x64; 0x91; 0x01; 0x5c; 0x63; 0xe6;
             0xf4; 0x51; 0x6b; 0x6b; 0x62; 0x61; 0x6c; 0x1c; 0xd8; 0x30; 0x65; 0x85; 0x4e; 0x00; 0x62; 0xf2;
             0xed; 0x95; 0x06; 0x6c; 0x7b; 0xa5; 0x01; 0x1b; 0xc1; 0xf4; 0x08; 0x82; 0x57; 0xc4; 0x0f; 0xf5;
             0xc6; 0xd9; 0xb0; 0x65; 0x50; 0xe9; 0xb7; 0x12; 0xea; 0xb8; 0xbe; 0x8b; 0x7c; 0x88; 0xb9; 0xfc;
             0xdf; 0x1d; 0xdd; 0x62; 0x49; 0x2d; 0xda; 0x15; 0xf3; 0x7c; 0xd3; 0x8c; 0x65; 0x4c; 0xd4; 0xfb;
             0x58; 0x61; 0xb2; 0x4d; 0xce; 0x51; 0xb5; 0x3a; 0x74; 0x00; 0xbc; 0xa3; 0xe2; 0x30; 0xbb; 0xd4;
             0x41; 0xa5; 0xdf; 0x4a; 0xd7; 0x95; 0xd8; 0x3d; 0x6d; 0xc4; 0xd1; 0xa4; 0xfb; 0xf4; 0xd6; 0xd3;
             0x6a; 0xe9; 0x69; 0x43; 0xfc; 0xd9; 0x6e; 0x34; 0x46; 0x88; 0x67; 0xad; 0xd0; 0xb8; 0x60; 0xda;
             0x73; 0x2d; 0x04; 0x44; 0xe5; 0x1d; 0x03; 0x33; 0x5f; 0x4c; 0x0a; 0xaa; 0xc9; 0x7c; 0x0d; 0xdd;
             0x3c; 0x71; 0x05; 0x50; 0xaa; 0x41; 0x02; 0x27; 0x10; 0x10; 0x0b; 0xbe; 0x86; 0x20; 0x0c; 0xc9;
             0x25; 0xb5; 0x68; 0x57; 0xb3; 0x85; 0x6f; 0x20; 0x09; 0xd4; 0x66; 0xb9; 0x9f; 0xe4; 0x61; 0xce;
             0x0e; 0xf9; 0xde; 0x5e; 0x98; 0xc9; 0xd9; 0x29; 0x22; 0x98; 0xd0; 0xb0; 0xb4; 0xa8; 0xd7; 0xc7;
             0x17; 0x3d; 0xb3; 0x59; 0x81; 0x0d; 0xb4; 0x2e; 0x3b; 0x5c; 0xbd; 0xb7; 0xad; 0x6c; 0xba; 0xc0;
             0x20; 0x83; 0xb8; 0xed; 0xb6; 0xb3; 0xbf; 0x9a; 0x0c; 0xe2; 0xb6; 0x03; 0x9a; 0xd2; 0xb1; 0x74;
             0x39; 0x47; 0xd5; 0xea; 0xaf; 0x77; 0xd2; 0x9d; 0x15; 0x26; 0xdb; 0x04; 0x83; 0x16; 0xdc; 0x73;
             0x12; 0x0b; 0x63; 0xe3; 0x84; 0x3b; 0x64; 0x94; 0x3e; 0x6a; 0x6d; 0x0d; 0xa8; 0x5a; 0x6a; 0x7a;
             0x0b; 0xcf; 0x0e; 0xe4; 0x9d; 0xff; 0x09; 0x93; 0x27; 0xae; 0x00; 0x0a; 0xb1; 0x9e; 0x07; 0x7d;
             0x44; 0x93; 0x0f; 0xf0; 0xd2; 0xa3; 0x08; 0x87; 0x68; 0xf2; 0x01; 0x1e; 0xfe; 0xc2; 0x06; 0x69;
             0x5d; 0x57; 0x62; 0xf7; 0xcb; 0x67; 0x65; 0x80; 0x71; 0x36; 0x6c; 0x19; 0xe7; 0x06; 0x6b; 0x6e;
             0x76; 0x1b; 0xd4; 0xfe; 0xe0; 0x2b; 0xd3; 0x89; 0x5a; 0x7a; 0xda; 0x10; 0xcc; 0x4a; 0xdd; 0x67;
             0x6f; 0xdf; 0xb9; 0xf9; 0xf9; 0xef; 0xbe; 0x8e; 0x43; 0xbe; 0xb7; 0x17; 0xd5; 0x8e; 0xb0; 0x60;
             0xe8; 0xa3; 0xd6; 0xd6; 0x7e; 0x93; 0xd1; 0xa1; 0xc4; 0xc2; 0xd8; 0x38; 0x52; 0xf2; 0xdf; 0x4f;
             0xf1; 0x67; 0xbb; 0xd1; 0x67; 0x57; 0xbc; 0xa6; 0xdd; 0x06; 0xb5; 0x3f; 0x4b; 0x36; 0xb2; 0x48;
             0xda; 0x2b; 0x0d; 0xd8; 0x4c; 0x1b; 0x0a; 0xaf; 0xf6; 0x4a; 0x03; 0x36; 0x60; 0x7a; 0x04; 0x41;
             0xc3; 0xef; 0x60; 0xdf; 0x55; 0xdf; 0x67; 0xa8; 0xef; 0x8e; 0x6e; 0x31; 0x79; 0xbe; 0x69; 0x46;
             0x8c; 0xb3; 0x61; 0xcb; 0x1a; 0x83; 0x66; 0xbc; 0xa0; 0xd2; 0x6f; 0x25; 0x36; 0xe2; 0x68; 0x52;
             0x95; 0x77; 0x0c; 0xcc; 0x03; 0x47; 0x0b; 0xbb; 0xb9; 0x16; 0x02; 0x22; 0x2f; 0x26; 0x05; 0x55;
             0xbe; 0x3b; 0xba; 0xc5; 0x28; 0x0b; 0xbd; 0xb2; 0x92; 0x5a; 0xb4; 0x2b; 0x04; 0x6a; 0xb3; 0x5c;
             0xa7; 0xff; 0xd7; 0xc2; 0x31; 0xcf; 0xd0; 0xb5; 0x8b; 0x9e; 0xd9; 0x2c; 0x1d; 0xae; 0xde; 0x5b;
             0xb0; 0xc2; 0x64; 0x9b; 0x26; 0xf2; 0x63; 0xec; 0x9c; 0xa3; 0x6a; 0x75; 0x0a; 0x93; 0x6d; 0x02;
             0xa9; 0x06; 0x09; 0x9c; 0x3f; 0x36; 0x0e; 0xeb; 0x85; 0x67; 0x07; 0x72; 0x13; 0x57; 0x00; 0x05;
             0x82; 0x4a; 0xbf; 0x95; 0x14; 0x7a; 0xb8; 0xe2; 0xae; 0x2b; 0xb1; 0x7b; 0x38; 0x1b; 0xb6; 0x0c;
             0x9b; 0x8e; 0xd2; 0x92; 0x0d; 0xbe; 0xd5; 0xe5; 0xb7; 0xef; 0xdc; 0x7c; 0x21; 0xdf; 0xdb; 0x0b;
             0xd4; 0xd2; 0xd3; 0x86; 0x42; 0xe2; 0xd4; 0xf1; 0xf8; 0xb3; 0xdd; 0x68; 0x6e; 0x83; 0xda; 0x1f;
             0xcd; 0x16; 0xbe; 0x81; 0x5b; 0x26; 0xb9; 0xf6; 0xe1; 0x77; 0xb0; 0x6f; 0x77; 0x47; 0xb7; 0x18;
             0xe6; 0x5a; 0x08; 0x88; 0x70; 0x6a; 0x0f; 0xff; 0xca; 0x3b; 0x06; 0x66; 0x5c; 0x0b; 0x01; 0x11;
             0xff; 0x9e; 0x65; 0x8f; 0x69; 0xae; 0x62; 0xf8; 0xd3; 0xff; 0x6b; 0x61; 0x45; 0xcf; 0x6c; 0x16;
             0x78; 0xe2; 0x0a; 0xa0; 0xee; 0xd2; 0x0d; 0xd7; 0x54; 0x83; 0x04; 0x4e; 0xc2; 0xb3; 0x03; 0x39;
             0x61; 0x26; 0x67; 0xa7; 0xf7; 0x16; 0x60; 0xd0; 0x4d; 0x47; 0x69; 0x49; 0xdb; 0x77; 0x6e; 0x3e;
             0x4a; 0x6a; 0xd1; 0xae; 0xdc; 0x5a; 0xd6; 0xd9; 0x66; 0x0b; 0xdf; 0x40; 0xf0; 0x3b; 0xd8; 0x37;
             0x53; 0xae; 0xbc; 0xa9; 0xc5; 0x9e; 0xbb; 0xde; 0x7f; 0xcf; 0xb2; 0x47; 0xe9; 0xff; 0xb5; 0x30;
             0x1c; 0xf2; 0xbd; 0xbd; 0x8a; 0xc2; 0xba; 0xca; 0x30; 0x93; 0xb3; 0x53; 0xa6; 0xa3; 0xb4; 0x24;
             0x05; 0x36; 0xd0; 0xba; 0x93; 0x06; 0xd7; 0xcd; 0x29; 0x57; 0xde; 0x54; 0xbf; 0x67; 0xd9; 0x23;
             0x2e; 0x7a; 0x66; 0xb3; 0xb8; 0x4a; 0x61; 0xc4; 0x02; 0x1b; 0x68; 0x5d; 0x94; 0x2b; 0x6f; 0x2a;
             0x37; 0xbe; 0x0b; 0xb4; 0xa1; 0x8e; 0x0c; 0xc3; 0x1b; 0xdf; 0x05; 0x5a; 0x8d; 0xef; 0x02; 0x2d; |]
