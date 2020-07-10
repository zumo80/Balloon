xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 130;
 1.10824;-0.15971;3.44243;,
 1.40530;1.73110;3.10292;,
 0.68389;1.46708;3.26795;,
 0.41038;2.58457;-0.00445;,
 0.53299;2.20736;-1.73968;,
 0.24535;1.83014;-1.45204;,
 0.16989;2.19796;0.00971;,
 0.80175;-0.52280;3.45185;,
 0.36796;1.08511;3.14537;,
 1.16482;-0.15971;-3.40888;,
 1.45246;1.71226;-2.95621;,
 2.64073;1.89613;-2.77231;,
 2.55583;0.28351;3.29627;,
 2.56057;-1.36682;3.68291;,
 4.10719;0.74560;2.95205;,
 2.61244;0.28351;-3.29572;,
 2.62657;-1.37153;-3.34288;,
 4.14960;0.74089;-2.86663;,
 3.97042;2.00461;-2.17819;,
 2.59828;1.90088;2.71628;,
 3.94213;2.00932;2.24945;,
 0.86778;-0.51338;-3.30988;,
 0.43396;1.11340;-2.75818;,
 0.75459;1.41046;-2.85721;,
 1.25914;-1.97510;-2.89963;,
 1.42888;-2.75785;0.23603;,
 0.73102;-3.19636;0.17003;,
 0.29722;-2.05997;-3.05995;,
 4.06474;-1.61675;2.79173;,
 2.54641;-1.81010;3.41885;,
 2.34367;-2.80499;0.30206;,
 1.43362;3.02311;-0.04687;,
 1.49019;2.60347;-1.78210;,
 2.34367;-2.80499;0.30206;,
 2.60773;-1.81477;-2.97037;,
 4.11661;-1.61675;-2.53657;,
 2.62186;2.88634;-1.67839;,
 1.20726;-2.00812;3.26795;,
 0.80175;-0.52280;3.45185;,
 0.32551;-2.40892;3.03221;,
 3.84313;2.82505;-1.31059;,
 4.51741;2.52328;-0.03274;,
 4.51741;1.96217;-1.62652;,
 1.42888;-2.75785;0.23603;,
 2.54641;-1.81010;3.41885;,
 6.13948;1.09928;-2.76289;,
 8.86018;0.90595;-2.91379;,
 8.90263;-1.45169;-2.96566;,
 6.14419;-1.44701;-2.81947;,
 6.00745;2.35825;-0.02332;,
 8.84134;2.41012;-0.04216;,
 4.87105;1.12753;-3.00337;,
 4.84747;-1.48471;-3.05995;,
 4.74373;2.71190;-0.04216;,
 4.96062;1.13701;3.09350;,
 5.96500;1.12286;2.65499;,
 4.48912;1.96217;1.62704;,
 4.36180;0.56173;2.65025;,
 4.27222;1.93859;1.77794;,
 4.30521;1.93859;-1.77739;,
 4.39954;0.56173;-2.57428;,
 4.51741;1.02382;-2.76289;,
 4.39954;0.56173;-2.57428;,
 4.30521;1.93859;-1.77739;,
 4.61170;1.03324;2.85302;,
 4.31934;2.51389;-0.03745;,
 4.27222;1.93859;1.77794;,
 3.81955;2.82505;1.33469;,
 4.60227;-1.32440;3.05105;,
 4.95121;-1.49888;3.31040;,
 0.24535;1.83014;-1.45204;,
 -0.38177;1.10870;-2.55541;,
 -0.54683;2.05174;0.02855;,
 0.16989;2.19796;0.00971;,
 0.20764;1.83484;1.66478;,
 -0.39593;0.98137;3.15008;,
 0.20764;1.83484;1.66478;,
 0.49525;2.22623;1.92881;,
 1.47133;2.68361;1.87223;,
 2.59828;2.89580;1.60817;,
 2.59828;3.21170;-0.03745;,
 3.81484;3.03725;-0.01387;,
 0.86778;-0.51338;-3.30988;,
 0.43396;1.11340;-2.75818;,
 11.33572;0.56173;2.03726;,
 11.58562;0.43442;1.76378;,
 11.55262;1.47179;-0.11290;,
 11.29801;1.77355;-0.11290;,
 11.30742;-1.26311;2.07500;,
 11.55732;-1.13108;1.79678;,
 11.28856;-2.31932;-0.14590;,
 11.54791;-2.05997;-0.14119;,
 11.52433;-1.28195;-2.32438;,
 11.76952;-1.14518;-2.02258;,
 11.54791;-2.05997;-0.14119;,
 11.28856;-2.31932;-0.14590;,
 11.55262;0.57115;-2.25364;,
 11.79781;0.44386;-1.95658;,
 8.86963;0.92008;2.81528;,
 8.83189;-1.49411;2.90489;,
 8.77531;-2.57396;0.15116;,
 8.77531;-2.57396;0.15116;,
 3.86197;-1.22066;3.19724;,
 4.36180;0.56173;2.65025;,
 0.73102;-3.19636;0.17003;,
 0.36796;1.08511;3.14537;,
 5.96500;-1.47055;2.87189;,
 4.88050;-2.65883;0.22190;,
 6.04516;-2.59754;0.23603;,
 6.04516;-2.59754;0.23603;,
 4.88050;-2.65883;0.22190;,
 4.49382;-1.31497;-2.81476;,
 4.45612;-2.56925;0.20774;,
 4.45612;-2.56925;0.20774;,
 12.74560;-1.23478;-1.98958;,
 13.00020;-2.06941;-0.23077;,
 11.75539;-2.08826;-0.17890;,
 11.75539;-2.08826;-0.17890;,
 11.86384;-1.09333;1.85810;,
 13.00020;-2.06941;-0.23077;,
 13.37743;-1.26311;1.74020;,
 11.74593;1.58966;-0.15061;,
 11.85439;0.51457;1.86752;,
 13.39159;0.67960;1.75907;,
 13.02379;1.56610;-0.20248;,
 12.73615;0.58057;-2.00845;,
 3.91858;-1.23010;-2.97979;,
 4.11661;-1.61675;-2.53657;,
 2.60773;-1.81477;-2.97037;,
 4.06474;-1.61675;2.79173;;
 
 196;
 3;0,1,2;,
 3;3,4,5;,
 3;3,5,6;,
 3;7,0,2;,
 3;7,2,8;,
 3;9,10,11;,
 3;12,13,14;,
 3;15,16,9;,
 3;17,11,18;,
 3;19,14,20;,
 3;21,22,23;,
 3;21,23,9;,
 3;9,23,10;,
 3;24,25,26;,
 3;24,26,27;,
 3;4,23,22;,
 3;4,22,5;,
 3;28,29,30;,
 3;4,3,31;,
 3;4,31,32;,
 3;33,34,35;,
 3;11,10,32;,
 3;11,32,36;,
 3;37,38,39;,
 3;11,36,40;,
 3;11,40,18;,
 3;40,41,42;,
 3;29,37,43;,
 3;29,43,30;,
 3;44,13,0;,
 3;44,0,7;,
 3;45,46,47;,
 3;45,47,48;,
 3;45,49,50;,
 3;45,50,46;,
 3;51,45,48;,
 3;51,48,52;,
 3;53,49,45;,
 3;53,45,51;,
 3;54,55,49;,
 3;54,49,53;,
 3;56,14,57;,
 3;56,57,58;,
 3;59,60,17;,
 3;59,17,42;,
 3;61,62,63;,
 3;64,65,66;,
 3;20,14,56;,
 3;56,67,20;,
 3;64,68,69;,
 3;64,69,54;,
 3;70,71,72;,
 3;73,70,72;,
 3;74,72,75;,
 3;74,73,72;,
 3;76,8,2;,
 3;76,2,77;,
 3;1,78,77;,
 3;1,77,2;,
 3;79,80,31;,
 3;79,31,78;,
 3;67,81,80;,
 3;67,80,79;,
 3;56,41,67;,
 3;82,27,71;,
 3;82,71,83;,
 3;84,85,86;,
 3;84,86,87;,
 3;88,89,85;,
 3;88,85,84;,
 3;90,91,89;,
 3;90,89,88;,
 3;92,93,94;,
 3;92,94,95;,
 3;96,97,93;,
 3;96,93,92;,
 3;87,86,97;,
 3;87,97,96;,
 3;84,98,99;,
 3;84,99,88;,
 3;87,50,98;,
 3;87,98,84;,
 3;88,99,100;,
 3;88,100,90;,
 3;95,101,47;,
 3;95,47,92;,
 3;92,47,46;,
 3;92,46,96;,
 3;96,46,50;,
 3;96,50,87;,
 3;78,31,3;,
 3;78,3,77;,
 3;32,10,23;,
 3;32,23,4;,
 3;19,20,67;,
 3;19,67,79;,
 3;81,40,36;,
 3;81,36,80;,
 3;42,41,65;,
 3;42,65,59;,
 3;42,17,18;,
 3;41,81,67;,
 3;19,1,0;,
 3;58,65,41;,
 3;58,41,56;,
 3;32,31,80;,
 3;32,80,36;,
 3;76,77,3;,
 3;76,3,6;,
 3;40,81,41;,
 3;78,1,19;,
 3;78,19,79;,
 3;102,57,14;,
 3;34,24,82;,
 3;68,64,103;,
 3;12,19,0;,
 3;43,37,39;,
 3;43,39,104;,
 3;34,33,25;,
 3;34,25,24;,
 3;27,82,24;,
 3;75,105,74;,
 3;83,71,70;,
 3;69,106,55;,
 3;69,55,54;,
 3;107,108,106;,
 3;107,106,69;,
 3;52,48,109;,
 3;52,109,110;,
 3;52,111,61;,
 3;52,61,51;,
 3;18,40,42;,
 3;62,61,111;,
 3;66,103,64;,
 3;65,53,51;,
 3;65,51,61;,
 3;65,64,54;,
 3;65,54,53;,
 3;55,106,99;,
 3;55,99,98;,
 3;49,55,98;,
 3;49,98,50;,
 3;108,100,99;,
 3;108,99,106;,
 3;112,111,52;,
 3;112,52,110;,
 3;38,105,75;,
 3;38,75,39;,
 3;48,47,101;,
 3;48,101,109;,
 3;68,113,107;,
 3;68,107,69;,
 3;63,65,61;,
 3;114,115,116;,
 3;117,118,89;,
 3;117,89,91;,
 3;117,119,120;,
 3;117,120,118;,
 3;121,86,85;,
 3;121,85,122;,
 3;123,124,121;,
 3;123,121,122;,
 3;97,86,121;,
 3;118,122,85;,
 3;118,85,89;,
 3;122,118,120;,
 3;122,120,123;,
 3;93,114,116;,
 3;116,94,93;,
 3;125,97,121;,
 3;121,124,125;,
 3;93,97,125;,
 3;93,125,114;,
 3;15,11,17;,
 3;17,60,126;,
 3;126,127,128;,
 3;126,128,16;,
 3;13,44,129;,
 3;13,129,102;,
 3;126,16,17;,
 3;127,126,60;,
 3;57,102,129;,
 3;14,13,102;,
 3;38,37,29;,
 3;21,9,16;,
 3;21,16,128;,
 3;35,111,112;,
 3;113,68,28;,
 3;28,30,113;,
 3;112,33,35;,
 3;111,35,62;,
 3;103,28,68;,
 3;0,13,12;,
 3;14,19,12;,
 3;9,11,15;,
 3;17,16,15;;
 
 MeshMaterialList {
  9;
  196;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  4,
  1,
  4,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  4,
  4,
  1,
  1,
  1,
  4,
  4,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.800000;0.677600;0.627200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.564800;0.800000;0.380000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.339200;0.339200;0.339200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.065600;0.037600;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.775200;0.612000;0.489600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.084800;0.232000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.467200;0.078400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.034400;0.034400;0.034400;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  147;
  -0.318430;0.947813;-0.015896;,
  -0.348581;0.567412;-0.746013;,
  0.180365;-0.650342;-0.737918;,
  -0.279644;0.535810;0.796685;,
  -0.278303;-0.141107;0.950072;,
  0.410499;-0.906388;-0.099757;,
  -0.008853;0.075287;0.997123;,
  0.006834;0.592960;0.805203;,
  -0.144182;0.315590;0.937878;,
  -0.689128;0.724591;0.008414;,
  -0.611631;0.701648;-0.365511;,
  -0.590320;0.741300;-0.319370;,
  -0.574123;0.818521;-0.020151;,
  -0.165418;-0.013505;0.986131;,
  -0.388054;0.480772;0.786303;,
  -0.117414;0.139648;-0.983215;,
  -0.150307;0.544407;-0.825245;,
  0.118299;0.562721;-0.818139;,
  0.068999;0.282210;0.956868;,
  0.142660;-0.182947;0.972717;,
  0.479257;0.280731;0.831566;,
  0.122253;0.169898;-0.977849;,
  0.082026;-0.239756;-0.967362;,
  0.495566;0.239119;-0.835007;,
  0.458627;0.585830;-0.668180;,
  0.143045;0.561430;0.815067;,
  0.448254;0.598306;0.664152;,
  -0.254961;-0.085573;-0.963157;,
  -0.513407;0.494699;-0.701204;,
  -0.452087;0.463940;-0.761825;,
  0.216687;-0.741278;-0.635259;,
  0.226433;-0.972736;0.050126;,
  0.413011;-0.716479;0.562210;,
  0.017072;-0.757418;0.652707;,
  0.096236;-0.995317;0.009103;,
  -0.276101;0.960745;-0.027160;,
  -0.241339;0.858388;-0.452688;,
  0.079515;-0.784797;-0.614631;,
  0.413222;-0.776731;-0.475327;,
  0.027051;0.919735;-0.391606;,
  -0.135781;-0.158161;0.978033;,
  0.433047;0.801502;-0.412388;,
  0.671743;0.740782;0.001634;,
  0.665117;0.584413;-0.464845;,
  0.026823;0.021891;-0.999400;,
  0.142709;0.026907;-0.989399;,
  0.043478;0.023118;-0.998787;,
  0.105861;0.021438;-0.994150;,
  0.126562;0.978047;0.165549;,
  0.124345;0.978594;-0.163990;,
  -0.070908;0.023162;-0.997214;,
  -0.338216;0.023795;-0.940768;,
  -0.037087;0.993815;-0.104671;,
  -0.014483;0.791855;0.610537;,
  0.185903;0.398886;0.897959;,
  0.727567;0.508345;0.460686;,
  0.822947;0.066979;0.564155;,
  -0.188264;-0.853944;-0.485114;,
  0.884960;0.348132;-0.309273;,
  0.825658;0.056859;-0.561298;,
  -0.751289;0.199339;-0.629149;,
  0.822758;0.535335;0.191010;,
  0.892506;0.449682;0.034905;,
  0.383774;0.842136;0.378847;,
  -0.651056;-0.136685;0.746621;,
  -0.102591;0.083160;0.991241;,
  -0.624851;0.720351;0.301090;,
  -0.563907;0.736232;0.374126;,
  -0.201677;0.886663;0.416120;,
  0.000707;0.919977;0.391972;,
  -0.026535;0.999520;-0.015994;,
  0.323122;0.945522;-0.039745;,
  0.579709;0.405798;0.706587;,
  0.770983;0.226003;0.595406;,
  0.747689;0.647917;0.145482;,
  0.540706;0.839905;0.046866;,
  0.561964;-0.485449;0.669728;,
  0.479415;-0.721777;0.499199;,
  0.450933;-0.892502;0.009960;,
  0.426316;-0.903369;-0.046689;,
  0.560228;-0.440646;-0.701410;,
  0.656834;-0.193039;-0.728907;,
  0.567848;0.477394;-0.670555;,
  0.783792;0.460929;-0.416191;,
  0.150212;0.681427;0.716306;,
  0.141729;0.042273;0.989002;,
  0.071272;-0.997245;0.020563;,
  0.621313;-0.163466;0.766321;,
  -0.052420;0.500703;-0.864030;,
  -0.035182;-0.896434;-0.441779;,
  0.195838;0.081730;0.977224;,
  -0.130060;-0.981478;0.140660;,
  0.034619;-0.999193;0.020373;,
  -0.725987;-0.175538;-0.664928;,
  -0.006327;-0.999466;-0.032063;,
  0.013885;-0.999459;-0.029815;,
  -0.052060;-0.997067;0.056105;,
  -0.021512;-0.897889;0.439697;,
  -0.018272;-0.912830;0.407931;,
  -0.252174;0.966436;0.049081;,
  -0.160407;0.389622;0.906898;,
  -0.013931;0.897933;0.439912;,
  0.016778;0.999048;-0.040279;,
  0.537099;-0.314410;-0.782733;,
  0.231318;-0.940358;0.249438;,
  0.023444;0.006146;0.999706;,
  0.095234;0.894028;-0.437771;,
  0.128294;0.878859;-0.459508;,
  -0.273479;0.839638;-0.469274;,
  -0.308791;-0.766182;-0.563571;,
  -0.458646;-0.496677;-0.736855;,
  -0.287767;-0.798040;0.529455;,
  -0.430121;-0.576177;0.694993;,
  -0.179349;-0.864117;0.470251;,
  -0.837273;0.069381;-0.542365;,
  -0.943985;0.114464;-0.309500;,
  -0.680700;0.251485;0.688042;,
  -0.579933;0.068869;0.811748;,
  -0.815450;0.462310;0.348298;,
  -0.481680;0.036204;-0.875599;,
  0.070694;-0.925471;0.372164;,
  0.065047;-0.929400;-0.363297;,
  -0.010956;-0.994806;-0.101195;,
  -0.009953;-0.992681;0.120353;,
  -0.695037;0.147337;0.703716;,
  0.418051;-0.866407;0.273080;,
  0.068729;-0.923363;0.377727;,
  -0.228268;-0.909706;0.346885;,
  -0.161326;-0.923877;-0.347023;,
  0.023115;-0.937523;-0.347154;,
  -0.846131;0.244869;0.473393;,
  -0.500026;0.865991;-0.005835;,
  0.050642;-0.915829;0.398363;,
  0.929615;0.347584;-0.122478;,
  -0.521988;0.852893;-0.010069;,
  -0.388796;0.458630;0.799059;,
  -0.277642;0.597791;-0.752038;,
  -0.162741;0.003826;0.986661;,
  -0.198983;0.024248;0.979703;,
  0.074260;-0.007799;0.997208;,
  0.071462;-0.010209;0.997391;,
  -0.133467;-0.881907;-0.452136;,
  -0.061318;0.042510;-0.997213;,
  0.032851;-0.010217;-0.999408;,
  0.419012;-0.840477;-0.343552;,
  -0.626808;0.067970;-0.776204;,
  -0.484417;0.122313;0.866245;;
  196;
  3;6,7,8;,
  3;9,10,11;,
  3;9,11,12;,
  3;13,6,8;,
  3;13,8,14;,
  3;15,16,17;,
  3;18,19,20;,
  3;21,22,15;,
  3;23,17,24;,
  3;25,20,26;,
  3;27,28,29;,
  3;27,29,15;,
  3;15,29,16;,
  3;30,31,5;,
  3;30,5,2;,
  3;10,29,28;,
  3;10,28,11;,
  3;32,33,34;,
  3;10,9,35;,
  3;10,35,36;,
  3;34,37,38;,
  3;17,16,36;,
  3;17,36,39;,
  3;40,13,4;,
  3;17,39,41;,
  3;17,41,24;,
  3;41,42,43;,
  3;33,104,31;,
  3;33,31,34;,
  3;33,19,6;,
  3;105,6,13;,
  3;44,45,46;,
  3;44,46,47;,
  3;106,48,49;,
  3;106,49,107;,
  3;50,44,47;,
  3;50,47,51;,
  3;52,48,106;,
  3;52,106,108;,
  3;53,54,48;,
  3;53,48,52;,
  3;55,20,56;,
  3;109,110,57;,
  3;58,59,23;,
  3;111,112,113;,
  3;60,114,115;,
  3;61,62,61;,
  3;26,20,55;,
  3;55,63,26;,
  3;116,64,65;,
  3;116,65,117;,
  3;11,1,0;,
  3;12,11,0;,
  3;66,0,3;,
  3;66,12,0;,
  3;66,14,118;,
  3;66,118,67;,
  3;7,68,67;,
  3;7,67,8;,
  3;69,70,35;,
  3;69,35,68;,
  3;63,71,70;,
  3;63,70,69;,
  3;55,42,63;,
  3;27,119,1;,
  3;27,1,28;,
  3;72,73,74;,
  3;72,74,75;,
  3;76,77,73;,
  3;76,73,72;,
  3;78,79,77;,
  3;78,77,76;,
  3;80,81,79;,
  3;80,79,78;,
  3;82,83,81;,
  3;82,81,80;,
  3;75,74,83;,
  3;75,83,82;,
  3;72,84,85;,
  3;72,85,76;,
  3;75,49,84;,
  3;75,84,72;,
  3;76,120,86;,
  3;76,86,78;,
  3;78,86,121;,
  3;78,121,80;,
  3;80,46,45;,
  3;80,45,82;,
  3;82,107,49;,
  3;82,49,75;,
  3;68,35,9;,
  3;68,9,67;,
  3;36,16,29;,
  3;36,29,10;,
  3;25,26,63;,
  3;25,63,69;,
  3;71,41,39;,
  3;71,39,70;,
  3;113,122,123;,
  3;113,123,111;,
  3;43,23,24;,
  3;42,71,63;,
  3;25,7,6;,
  3;57,123,122;,
  3;57,122,109;,
  3;36,35,70;,
  3;36,70,39;,
  3;66,67,9;,
  3;66,9,12;,
  3;41,71,42;,
  3;68,7,25;,
  3;68,25,69;,
  3;87,56,20;,
  3;37,30,27;,
  3;64,116,124;,
  3;18,25,6;,
  3;31,104,125;,
  3;31,125,5;,
  3;37,34,31;,
  3;37,31,30;,
  3;2,27,30;,
  3;3,14,66;,
  3;28,1,11;,
  3;65,90,54;,
  3;65,54,53;,
  3;91,92,126;,
  3;91,126,127;,
  3;128,129,92;,
  3;128,92,91;,
  3;51,93,60;,
  3;51,60,50;,
  3;24,41,43;,
  3;114,60,93;,
  3;130,124,116;,
  3;131,52,108;,
  3;131,108,60;,
  3;131,116,53;,
  3;131,53,52;,
  3;54,90,85;,
  3;54,85,84;,
  3;48,54,84;,
  3;48,84,49;,
  3;92,86,120;,
  3;92,120,126;,
  3;94,93,128;,
  3;94,128,91;,
  3;13,14,3;,
  3;13,3,4;,
  3;129,121,86;,
  3;129,86,92;,
  3;132,94,91;,
  3;64,91,127;,
  3;58,62,133;,
  3;89,95,96;,
  3;96,97,77;,
  3;96,77,79;,
  3;96,95,98;,
  3;96,98,97;,
  3;99,134,135;,
  3;99,135,100;,
  3;101,102,99;,
  3;101,99,100;,
  3;136,134,99;,
  3;137,100,135;,
  3;137,135,138;,
  3;100,137,139;,
  3;100,139,140;,
  3;141,89,96;,
  3;96,79,141;,
  3;88,136,99;,
  3;99,102,88;,
  3;142,136,88;,
  3;81,88,143;,
  3;21,17,23;,
  3;23,59,103;,
  3;103,38,37;,
  3;103,37,22;,
  3;19,33,32;,
  3;19,32,87;,
  3;103,22,23;,
  3;38,103,59;,
  3;56,87,32;,
  3;20,19,87;,
  3;13,40,33;,
  3;27,15,22;,
  3;27,22,37;,
  3;38,144,94;,
  3;94,132,32;,
  3;32,34,94;,
  3;94,34,38;,
  3;93,145,114;,
  3;124,146,64;,
  3;6,19,18;,
  3;20,25,18;,
  3;15,17,21;,
  3;23,22,21;;
 }
 MeshTextureCoords {
  130;
  0.047400;0.895000;,
  0.049600;0.866000;,
  0.035200;0.869600;,
  0.027300;0.800800;,
  0.029800;0.772500;,
  0.023100;0.771200;,
  0.019500;0.800800;,
  0.043000;0.898900;,
  0.028300;0.874500;,
  0.052900;0.715000;,
  0.048800;0.744800;,
  0.079600;0.748500;,
  0.079600;0.892800;,
  0.078800;0.908900;,
  0.127000;0.883300;,
  0.078500;0.717700;,
  0.077400;0.696600;,
  0.126600;0.726100;,
  0.114500;0.755700;,
  0.080400;0.860200;,
  0.115200;0.853400;,
  0.045400;0.709400;,
  0.027100;0.737100;,
  0.034800;0.741300;,
  0.047100;0.673000;,
  0.046900;0.636700;,
  0.027300;0.636700;,
  0.019300;0.673000;,
  0.123100;0.929200;,
  0.078400;0.927500;,
  0.078100;0.992200;,
  0.058600;0.800800;,
  0.054300;0.772400;,
  0.078100;0.636700;,
  0.078000;0.680100;,
  0.125700;0.680100;,
  0.083500;0.776000;,
  0.045100;0.946200;,
  0.039200;0.904900;,
  0.023700;0.954100;,
  0.119400;0.776600;,
  0.141100;0.801300;,
  0.133400;0.758400;,
  0.050800;0.992200;,
  0.078500;0.915800;,
  0.179700;0.742200;,
  0.238100;0.742200;,
  0.238300;0.687500;,
  0.179700;0.687500;,
  0.179700;0.800800;,
  0.238300;0.800800;,
  0.156300;0.742200;,
  0.156300;0.687500;,
  0.156300;0.800800;,
  0.156300;0.863300;,
  0.179700;0.863300;,
  0.134800;0.841300;,
  0.131800;0.889200;,
  0.140600;0.847700;,
  0.138200;0.754900;,
  0.133200;0.723900;,
  0.144400;0.742000;,
  0.138800;0.722900;,
  0.144300;0.751800;,
  0.148400;0.863300;,
  0.148400;0.800800;,
  0.147000;0.850400;,
  0.119700;0.823800;,
  0.148400;0.925800;,
  0.156300;0.925800;,
  0.017300;0.769100;,
  0.004700;0.745700;,
  0.003900;0.800800;,
  0.013300;0.800500;,
  0.017900;0.841800;,
  0.006200;0.881400;,
  0.023700;0.839700;,
  0.030400;0.838500;,
  0.054700;0.837000;,
  0.083900;0.831600;,
  0.086700;0.800000;,
  0.120300;0.801600;,
  0.037600;0.703400;,
  0.021700;0.732900;,
  0.293000;0.863300;,
  0.304700;0.863300;,
  0.312500;0.800800;,
  0.300800;0.800800;,
  0.293000;0.925800;,
  0.304700;0.925800;,
  0.293000;0.992200;,
  0.304700;0.992200;,
  0.300800;0.687500;,
  0.312500;0.687500;,
  0.304700;0.636700;,
  0.293000;0.636700;,
  0.304700;0.742200;,
  0.316400;0.742200;,
  0.238300;0.863300;,
  0.238300;0.925800;,
  0.238300;0.992200;,
  0.238300;0.636700;,
  0.113700;0.909000;,
  0.137300;0.894500;,
  0.027300;0.992200;,
  0.023000;0.878900;,
  0.179700;0.925800;,
  0.156300;0.992200;,
  0.179700;0.992200;,
  0.179700;0.636700;,
  0.156300;0.636700;,
  0.144500;0.687500;,
  0.144500;0.636700;,
  0.148400;0.992200;,
  0.367200;0.687500;,
  0.375000;0.636700;,
  0.343800;0.636700;,
  0.343800;0.992200;,
  0.343800;0.925800;,
  0.375000;0.992200;,
  0.382800;0.925800;,
  0.343800;0.800800;,
  0.343800;0.863300;,
  0.382800;0.863300;,
  0.375000;0.800800;,
  0.365300;0.742700;,
  0.116200;0.696200;,
  0.121300;0.687400;,
  0.078100;0.687400;,
  0.117200;0.916300;;
 }
}