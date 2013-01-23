%this function is responsible for loading the movements for each node in
%the dataset at a certain time. this function is specific to the kaist data
%set
function oldMovements = loadOldMovements(t)
%TODO: check if overrun the end of the array
%     kaist13=importdata('kaist-2012-11-12\kaist\KAIST_30sec_013.txt');
%     kaist15=importdata('kaist-2012-11-12\kaist\KAIST_30sec_015.txt');
%     kaist14=importdata('kaist-2012-11-12\kaist\KAIST_30sec_014.txt');
%     kaist20=importdata('kaist-2012-11-12\kaist\KAIST_30sec_020.txt');
%     kaist23=importdata('kaist-2012-11-12\kaist\KAIST_30sec_023.txt');
%     kaist24=importdata('kaist-2012-11-12\kaist\KAIST_30sec_024.txt');
%     kaist27=importdata('kaist-2012-11-12\kaist\KAIST_30sec_027.txt');
%     kaist28=importdata('kaist-2012-11-12\kaist\KAIST_30sec_028.txt');
%     kaist32=importdata('kaist-2012-11-12\kaist\KAIST_30sec_032.txt');
%     kaist35=importdata('kaist-2012-11-12\kaist\KAIST_30sec_035.txt');
%     kaist36=importdata('kaist-2012-11-12\kaist\KAIST_30sec_036.txt');
%     kaist38=importdata('kaist-2012-11-12\kaist\KAIST_30sec_038.txt');
%     kaist42=importdata('kaist-2012-11-12\kaist\KAIST_30sec_042.txt');
%     kaist43=importdata('kaist-2012-11-12\kaist\KAIST_30sec_043.txt');
%     kaist45=importdata('kaist-2012-11-12\kaist\KAIST_30sec_045.txt');
%     kaist46=importdata('kaist-2012-11-12\kaist\KAIST_30sec_046.txt');
%     kaist47=importdata('kaist-2012-11-12\kaist\KAIST_30sec_047.txt');
%     kaist51=importdata('kaist-2012-11-12\kaist\KAIST_30sec_051.txt');
%     kaist53=importdata('kaist-2012-11-12\kaist\KAIST_30sec_053.txt');
%     kaist55=importdata('kaist-2012-11-12\kaist\KAIST_30sec_055.txt');
%     kaist56=importdata('kaist-2012-11-12\kaist\KAIST_30sec_056.txt');
%     kaist66=importdata('kaist-2012-11-12\kaist\KAIST_30sec_066.txt');
%     kaist72=importdata('kaist-2012-11-12\kaist\KAIST_30sec_072.txt');
%     kaist80=importdata('kaist-2012-11-12\kaist\KAIST_30sec_080.txt');


%     kaist13=movements.get(0);
%     kaist15=movements.get(1);
%     kaist14=movements.get(2);
%     kaist20=movements.get(3);
%     kaist23=movements.get(4);
%     kaist24=movements.get(5);
%     kaist27=movements.get(6);
%     kaist28=movements.get(7);
%     kaist32=movements.get(8);
%     kaist35=movements.get(9);
%     kaist36=movements.get(10);
%     kaist38=movements.get(11);
%     kaist42=movements.get(12);
%     kaist43=movements.get(13);
%     kaist45=movements.get(14);
%     kaist46=movements.get(15);
%     kaist47=movements.get(16);
%     kaist51=movements.get(17);
%     kaist53=movements.get(18);
%     kaist55=movements.get(19);
%     kaist56=movements.get(20);
%     kaist66=movements.get(21);
%     kaist72=movements.get(22);
%     kaist80=movements.get(23);
	
	global kaistImport13
	global kaistImport15
	global kaistImport14
	global kaistImport20
	global kaistImport23
	global kaistImport24
	global kaistImport27
	global kaistImport28
	global kaistImport32
	global kaistImport35
	global kaistImport36
	global kaistImport38
	global kaistImport42
	global kaistImport43
	global kaistImport45
	global kaistImport46
	global kaistImport47
	global kaistImport51
	global kaistImport53
	global kaistImport55
	global kaistImport56
	global kaistImport66
	global kaistImport72
	global kaistImport80
	
	

    kaist13=kaistImport13;
    kaist15=kaistImport15;
    kaist14=kaistImport14;
    kaist20=kaistImport20;
    kaist23=kaistImport23;
    kaist24=kaistImport24;
    kaist27=kaistImport27;
    kaist28=kaistImport28;
    kaist32=kaistImport32;
    kaist35=kaistImport35;
    kaist36=kaistImport36;
    kaist38=kaistImport38;
    kaist42=kaistImport42;
    kaist43=kaistImport43;
    kaist45=kaistImport45;
    kaist46=kaistImport46;
    kaist47=kaistImport47;
    kaist51=kaistImport51;
    kaist53=kaistImport53;
    kaist55=kaistImport55;
    kaist56=kaistImport56;
    kaist66=kaistImport66;
    kaist72=kaistImport72;
    kaist80=kaistImport80;
    
    
    kaist13=[kaist13(t,2), kaist13(t,3)];
    kaist15=[kaist15(t,2), kaist15(t,3)];
    kaist14=[kaist14(t,2), kaist14(t,3)];
    kaist20=[kaist20(t,2), kaist20(t,3)];
    kaist23=[kaist23(t,2), kaist23(t,3)];
    kaist24=[kaist24(t,2), kaist24(t,3)];
    kaist27=[kaist27(t,2), kaist27(t,3)];
    kaist28=[kaist28(t,2), kaist28(t,3)];
    kaist32=[kaist32(t,2), kaist32(t,3)];
    kaist35=[kaist35(t,2), kaist35(t,3)];
    kaist36=[kaist36(t,2), kaist36(t,3)];
    kaist38=[kaist38(t,2), kaist38(t,3)];
    kaist42=[kaist42(t,2), kaist42(t,3)];
    kaist43=[kaist43(t,2), kaist43(t,3)];
    kaist45=[kaist45(t,2), kaist45(t,3)];
    kaist46=[kaist46(t,2), kaist46(t,3)];
    kaist47=[kaist47(t,2), kaist47(t,3)];
    kaist51=[kaist51(t,2), kaist51(t,3)];
    kaist53=[kaist53(t,2), kaist53(t,3)];
    kaist55=[kaist55(t,2), kaist55(t,3)];
    kaist56=[kaist56(t,2), kaist56(t,3)];
    kaist66=[kaist66(t,2), kaist66(t,3)];
    kaist72=[kaist72(t,2), kaist72(t,3)];
    kaist80=[kaist80(t,2), kaist80(t,3)];
    oldMovements=[kaist13; kaist14; kaist15; kaist20; kaist23; kaist24; kaist27; kaist28; kaist32; kaist35; kaist36; kaist38; kaist42; kaist43; kaist45; kaist46; kaist47; kaist51; kaist53; kaist55; kaist56; kaist66; kaist72; kaist80];
end
