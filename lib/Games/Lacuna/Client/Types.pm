###################################################
#
# This is a generated file DO NOT EDIT
# generated by data/build_types.pl using data/Types.tt2
#
###################################################
#
# Any structural changes should be made to data/Types.tt2
#
# Any informational changes should be made to one of:
#
#     data/building.yml
#     data/lists.yml
#     data/resources.yml
#     data/ships.yml
#
# All changes should be followed by running:
#     data/sort_types.pl
#     data/build_types.pl
#
###################################################

package Games::Lacuna::Client::Types;

use strict;
use warnings;
use List::MoreUtils qw(any);

require Exporter;

our @ISA = qw(Exporter);
our @EXPORT = qw( food_types ore_types ship_types ship_attribute_types building_types building_labels get_tags tag_list meta_building_list meta_type meta_type_list building_label building_type_from_label building_glyph_recipes ship_tags_list ship_tags ship_type_human is_food_type is_ore_type );
our %EXPORT_TAGS = (
    list     => [qw( food_types ore_types ship_types ship_attribute_types building_types building_labels )],
    resource => [qw( food_types ore_types )],
    tag      => [qw( get_tags tag_list )],
    meta     => [qw( meta_building_list meta_type meta_type_list building_label building_type_from_label building_glyph_recipes )],
    ship     => [qw( ship_types ship_attribute_types ship_tags_list ship_tags ship_type_human )],
    is       => [qw( is_food_type is_ore_type )],
    all      => [@EXPORT],
);

{
    my @food = qw( algae apple bean beetle bread burger cheese chip cider corn fungus lapis meal milk pancake pie potato root shake soup syrup wheat );
    sub food_types {
        return @food;
    }
    sub is_food_type {
        my( $check ) = @_;
        return any { $check eq $_ } @food;
    }
}

{
    my @ore = qw( anthracite bauxite beryl chalcopyrite chromite fluorite galena goethite gold gypsum halite kerogen magnetite methane monazite rutile sulfur trona uraninite zircon );
    sub ore_types {
        return @ore;
    }
    sub is_ore_type {
        my( $check ) = @_;
        return any { $check eq $_ } @ore;
    }
}


{
    my @ship_attribute = qw( speed hold_size combat stealth );
    sub ship_attribute_types {
        return @ship_attribute;
    }
}


{
    my %meta_types = (
        command => [qw(
            Archaeology
            ArtMuseum
            Capitol
            CloakingLab
            CulinaryInstitute
            Development
            Embassy
            Espionage
            GasGiantLab
            GasGiantPlatform
            GeneticsLab
            IBS
            Intelligence
            IntelTraining
            MayhemTraining
            MercenariesGuild
            MissionCommand
            MunitionsLab
            Network19
            Observatory
            OperaHouse
            Oversight
            Park
            Parliament
            PilotTraining
            PlanetaryCommand
            PoliceStation
            PoliticsTraining
            Propulsion
            SAW
            Security
            Shipyard
            SpacePort
            SSLA
            SSLB
            SSLC
            SSLD
            StationCommand
            Stockpile
            SubspaceSupplyDepot
            TerraformingLab
            TerraformingPlatform
            TheftTraining
            ThemePark
            Trade
            Transporter
            University
            Warehouse
        )],
        energy => [qw(
            Fission
            Fusion
            Geo
            HydroCarbon
            Singularity
            WasteEnergy
        )],
        food => [qw(
            Algae
            Apple
            Bean
            Beeldeban
            Bread
            Burger
            Cheese
            Chip
            Cider
            Corn
            CornMeal
            Dairy
            Denton
            Lapis
            Malcud
            Pancake
            Pie
            Potato
            Shake
            Soup
            Syrup
            Wheat
        )],
        glyph => [qw(
            AlgaePond
            AmalgusMeadow
            Beach1
            Beach10
            Beach11
            Beach12
            Beach13
            Beach2
            Beach3
            Beach4
            Beach5
            Beach6
            Beach7
            Beach8
            Beach9
            BeeldebanNest
            BlackHoleGenerator
            CitadelOfKnope
            CrashedShipSite
            Crater
            DentonBrambles
            EssentiaVein
            GeoThermalVent
            GratchsGauntlet
            Grove
            HallsOfVrbansk
            InterDimensionalRift
            KalavianRuins
            KasternsKeep
            Lagoon
            Lake
            LapisForest
            LCOTA
            LCOTB
            LCOTC
            LCOTD
            LCOTE
            LCOTF
            LCOTG
            LCOTH
            LCOTI
            LibraryOfJith
            MalcudField
            MassadsHenge
            NaturalSpring
            OracleOfAnid
            PantheonOfHagness
            Ravine
            RockyOutcrop
            Sand
            TempleOfTheDrajilites
            TheDillonForge
            Volcano
        )],
        happiness => [qw(
            Entertainment
            GreatBallOfJunk
            JunkHengeSculpture
            LuxuryHousing
            MetalJunkArches
            PyramidJunkSculpture
            SpaceJunkPark
        )],
        ore => [qw(
            Mine
            MiningMinistry
            OreRefinery
            WasteDigester
        )],
        storage => [qw(
            DistributionCenter
            EnergyReserve
            FoodReserve
            OreStorage
            PlanetaryCommand
            SupplyPod
            WasteSequestration
            WaterStorage
        )],
        waste => [qw(
            DeployedBleeder
            WasteExchanger
            WasteRecycling
            WasteTreatment
        )],
        water => [qw(
            AtmosphericEvaporator
            WaterProduction
            WaterPurification
            WaterReclamation
        )],
    );

    sub meta_type {
        my( $building ) = @_;
        return unless $building;
        for my $k ( keys %meta_types ){
            if( any {$_ eq $building} @{$meta_types{$k}} ){
                return $k;
            }
        }
        return;
    }
    sub meta_type_list{
        return keys %meta_types if wantarray;
        return [keys %meta_types];
    }
    sub meta_building_list {
        my( $type ) = @_;
        return unless $type;
        my $buildings = $meta_types{$type};
        return @$buildings if wantarray;
        return [@$buildings];
    }
}
{
    my @tags = qw(alliance colony command decoration defense energy essentia food glyph happiness infrastructure intelligence ore planet sculpture ship space_station_module storage trade waste water);
    sub tag_list {
        return @tags;
    }
}
{
    my %tags = (
        Algae => [qw(food)],
        AlgaePond => [qw(food glyph)],
        AmalgusMeadow => [qw(food glyph)],
        Apple => [qw(food)],
        Archaeology => [qw(command glyph infrastructure)],
        ArtMuseum => [qw(command space_station_module)],
        AtmosphericEvaporator => [qw(water)],
        Beach1 => [qw(decoration glyph)],
        Beach10 => [qw(decoration glyph)],
        Beach11 => [qw(decoration glyph)],
        Beach12 => [qw(decoration glyph)],
        Beach13 => [qw(decoration glyph)],
        Beach2 => [qw(decoration glyph)],
        Beach3 => [qw(decoration glyph)],
        Beach4 => [qw(decoration glyph)],
        Beach5 => [qw(decoration glyph)],
        Beach6 => [qw(decoration glyph)],
        Beach7 => [qw(decoration glyph)],
        Beach8 => [qw(decoration glyph)],
        Beach9 => [qw(decoration glyph)],
        Bean => [qw(food)],
        Beeldeban => [qw(food)],
        BeeldebanNest => [qw(food glyph)],
        BlackHoleGenerator => [qw(command glyph)],
        Bread => [qw(food)],
        Burger => [qw(food)],
        Capitol => [qw(command infrastructure)],
        Cheese => [qw(food)],
        Chip => [qw(food)],
        Cider => [qw(food)],
        CitadelOfKnope => [qw(glyph ship)],
        CloakingLab => [qw(command infrastructure ship)],
        Corn => [qw(food)],
        CornMeal => [qw(food)],
        CrashedShipSite => [qw(glyph ship)],
        Crater => [qw(decoration glyph)],
        CulinaryInstitute => [qw(command space_station_module)],
        Dairy => [qw(food)],
        Denton => [qw(food)],
        DentonBrambles => [qw(food glyph)],
        DeployedBleeder => [qw(waste)],
        Development => [qw(command infrastructure)],
        DistributionCenter => [qw(storage)],
        Embassy => [qw(alliance command infrastructure)],
        EnergyReserve => [qw(energy storage)],
        Entertainment => [qw(happiness infrastructure)],
        Espionage => [qw(command infrastructure intelligence)],
        EssentiaVein => [qw(essentia glyph)],
        Fission => [qw(energy)],
        FoodReserve => [qw(food storage)],
        Fusion => [qw(energy)],
        GasGiantLab => [qw(command infrastructure ship)],
        GasGiantPlatform => [qw(command infrastructure ship)],
        GeneticsLab => [qw(command infrastructure)],
        Geo => [qw(energy)],
        GeoThermalVent => [qw(energy glyph)],
        GratchsGauntlet => [qw(glyph)],
        GreatBallOfJunk => [qw(happiness infrastructure sculpture waste)],
        Grove => [qw(decoration glyph)],
        HallsOfVrbansk => [qw(glyph)],
        HydroCarbon => [qw(energy)],
        IBS => [qw(command space_station_module)],
        IntelTraining => [qw(command infrastructure intelligence)],
        Intelligence => [qw(command infrastructure intelligence)],
        InterDimensionalRift => [qw(glyph storage)],
        JunkHengeSculpture => [qw(happiness infrastructure sculpture waste)],
        KalavianRuins => [qw(glyph happiness)],
        KasternsKeep => [qw(glyph)],
        LCOTA => [qw(glyph)],
        LCOTB => [qw(glyph)],
        LCOTC => [qw(glyph)],
        LCOTD => [qw(glyph)],
        LCOTE => [qw(glyph)],
        LCOTF => [qw(glyph)],
        LCOTG => [qw(glyph)],
        LCOTH => [qw(glyph)],
        LCOTI => [qw(glyph)],
        Lagoon => [qw(decoration glyph)],
        Lake => [qw(decoration glyph)],
        Lapis => [qw(food)],
        LapisForest => [qw(food glyph)],
        LibraryOfJith => [qw(glyph infrastructure)],
        LuxuryHousing => [qw(happiness infrastructure)],
        Malcud => [qw(food)],
        MalcudField => [qw(food glyph)],
        MassadsHenge => [qw(glyph)],
        MayhemTraining => [qw(command infrastructure intelligence)],
        MercenariesGuild => [qw(command infrastructure ship trade)],
        MetalJunkArches => [qw(happiness infrastructure sculpture waste)],
        Mine => [qw(ore)],
        MiningMinistry => [qw(ore ship)],
        MissionCommand => [qw(command infrastructure)],
        MunitionsLab => [qw(command infrastructure ship)],
        NaturalSpring => [qw(glyph water)],
        Network19 => [qw(command happiness infrastructure)],
        Observatory => [qw(command infrastructure)],
        OperaHouse => [qw(command space_station_module)],
        OracleOfAnid => [qw(glyph infrastructure)],
        OreRefinery => [qw(ore)],
        OreStorage => [qw(ore storage)],
        Oversight => [qw(command infrastructure)],
        Pancake => [qw(food)],
        PantheonOfHagness => [qw(glyph planet)],
        Park => [qw(command happiness infrastructure)],
        Parliament => [qw(command space_station_module)],
        Pie => [qw(food)],
        PilotTraining => [qw(command infrastructure ship)],
        PlanetaryCommand => [qw(command infrastructure storage)],
        PoliceStation => [qw(command infrastructure space_station_module)],
        PoliticsTraining => [qw(command infrastructure intelligence)],
        Potato => [qw(food)],
        Propulsion => [qw(command infrastructure ship)],
        PyramidJunkSculpture => [qw(happiness infrastructure sculpture waste)],
        Ravine => [qw(glyph storage waste)],
        RockyOutcrop => [qw(decoration glyph)],
        SAW => [qw(command defense infrastructure)],
        SSLA => [qw(command infrastructure)],
        SSLB => [qw(command infrastructure)],
        SSLC => [qw(command infrastructure)],
        SSLD => [qw(command infrastructure)],
        Sand => [qw(decoration glyph)],
        Security => [qw(command infrastructure)],
        Shake => [qw(food)],
        Shipyard => [qw(command infrastructure ship)],
        Singularity => [qw(energy)],
        Soup => [qw(food)],
        SpaceJunkPark => [qw(happiness infrastructure sculpture waste)],
        SpacePort => [qw(command ship)],
        StationCommand => [qw(command infrastructure space_station_module)],
        Stockpile => [qw(command storage)],
        SubspaceSupplyDepot => [qw(command)],
        SupplyPod => [qw(storage)],
        Syrup => [qw(food)],
        TempleOfTheDrajilites => [qw(command glyph)],
        TerraformingLab => [qw(colony command infrastructure)],
        TerraformingPlatform => [qw(colony command infrastructure)],
        TheDillonForge => [qw(glyph)],
        TheftTraining => [qw(command infrastructure intelligence)],
        ThemePark => [qw(command happiness infrastructure)],
        Trade => [qw(command infrastructure ship trade)],
        Transporter => [qw(command infrastructure trade)],
        University => [qw(command infrastructure)],
        Volcano => [qw(glyph ore)],
        Warehouse => [qw(command space_station_module storage)],
        WasteDigester => [qw(ore waste)],
        WasteEnergy => [qw(energy waste)],
        WasteExchanger => [qw(waste)],
        WasteRecycling => [qw(waste)],
        WasteSequestration => [qw(storage waste)],
        WasteTreatment => [qw(waste)],
        WaterProduction => [qw(water)],
        WaterPurification => [qw(water)],
        WaterReclamation => [qw(water)],
        WaterStorage => [qw(storage water)],
        Wheat => [qw(food)],
    );
    sub get_tags{
        my( $building ) = @_;
        return @{ $tags{$building} };
    }
}
{
    my %label = (
        Algae => "Algae Cropper",
        AlgaePond => "Algae Pond",
        AmalgusMeadow => "Amalgus Meadow",
        Apple => "Apple Orchard",
        Archaeology => "Archaeology Ministry",
        ArtMuseum => "Art Museum",
        AtmosphericEvaporator => "Atmospheric Evaporator",
        Beach1 => "Beach [1]",
        Beach10 => "Beach [10]",
        Beach11 => "Beach [11]",
        Beach12 => "Beach [12]",
        Beach13 => "Beach [13]",
        Beach2 => "Beach [2]",
        Beach3 => "Beach [3]",
        Beach4 => "Beach [4]",
        Beach5 => "Beach [5]",
        Beach6 => "Beach [6]",
        Beach7 => "Beach [7]",
        Beach8 => "Beach [8]",
        Beach9 => "Beach [9]",
        Bean => "Amalgus Bean Plantation",
        Beeldeban => "Beeldeban Herder",
        BeeldebanNest => "Beeldeban Nest",
        BlackHoleGenerator => "Black Hole Generator",
        Bread => "Bread Bakery",
        Burger => "Malcud Burger Packer",
        Capitol => "Capitol",
        Cheese => "Cheese Maker",
        Chip => "Denton Root Chip Frier",
        Cider => "Apple Cider Bottler",
        CitadelOfKnope => "Citadel of Knope",
        CloakingLab => "Cloaking Lab",
        Corn => "Corn Plantation",
        CornMeal => "Corn Meal Grinder",
        CrashedShipSite => "Crashed Ship Site",
        Crater => "Crater",
        CulinaryInstitute => "Culinary Institute",
        Dairy => "Dairy Farm",
        Denton => "Denton Root Patch",
        DentonBrambles => "Denton Brambles",
        DeployedBleeder => "Deployed Bleeder",
        Development => "Development Ministry",
        DistributionCenter => "Distribution Center",
        Embassy => "Embassy",
        EnergyReserve => "Energy Reserve",
        Entertainment => "Entertainment District",
        Espionage => "Espionage Ministry",
        EssentiaVein => "Essentia Vein",
        Fission => "Fission Reactor",
        FoodReserve => "Food Reserve",
        Fusion => "Fusion Reactor",
        GasGiantLab => "Gas Giant Lab",
        GasGiantPlatform => "Gas Giant Settlement Platform",
        GeneticsLab => "Genetics Lab",
        Geo => "Geo Energy Plant",
        GeoThermalVent => "Geo Thermal Vent",
        GratchsGauntlet => "Gratch's Gauntlet",
        GreatBallOfJunk => "Great Ball of Junk",
        Grove => "Grove of Trees",
        HallsOfVrbansk => "Halls of Vrbansk",
        HydroCarbon => "Hydrocarbon Energy Plant",
        IBS => "Interstellar Broadcast System",
        IntelTraining => "Intel Training Facility",
        Intelligence => "Intelligence Ministry",
        InterDimensionalRift => "Interdimensional Rift",
        JunkHengeSculpture => "Junk Henge Sculpture",
        KalavianRuins => "Kalavian Ruins",
        KasternsKeep => "Kastern's Keep",
        LCOTA => "Lost City of Tyleon (A)",
        LCOTB => "Lost City of Tyleon (B)",
        LCOTC => "Lost City of Tyleon (C)",
        LCOTD => "Lost City of Tyleon (D)",
        LCOTE => "Lost City of Tyleon (E)",
        LCOTF => "Lost City of Tyleon (F)",
        LCOTG => "Lost City of Tyleon (G)",
        LCOTH => "Lost City of Tyleon (H)",
        LCOTI => "Lost City of Tyleon (I)",
        Lagoon => "Lagoon",
        Lake => "Lake",
        Lapis => "Lapis Orchard",
        LapisForest => "Lapis Forest",
        LibraryOfJith => "Library of Jith",
        LuxuryHousing => "Luxury Housing",
        Malcud => "Malcud Fungus Farm",
        MalcudField => "Malcud Field",
        MassadsHenge => "Massad's Henge",
        MayhemTraining => "Mayhem Training Facility",
        MercenariesGuild => "Mercenaries Guild",
        MetalJunkArches => "Metal Junk Arches",
        Mine => "Mine",
        MiningMinistry => "Mining Ministry",
        MissionCommand => "Mission Command",
        MunitionsLab => "Munitions Lab",
        NaturalSpring => "Natural Spring",
        Network19 => "Network 19 Affiliate",
        Observatory => "Observatory",
        OperaHouse => "Opera House",
        OracleOfAnid => "Oracle of Anid",
        OreRefinery => "Ore Refinery",
        OreStorage => "Ore Storage Tanks",
        Oversight => "Oversight Ministry",
        Pancake => "Potato Pancake Factory",
        PantheonOfHagness => "Pantheon of Hagness",
        Park => "Park",
        Parliament => "Parliament",
        Pie => "Lapis Pie Bakery",
        PilotTraining => "Pilot Training Facility",
        PlanetaryCommand => "Planetary Command Center",
        PoliceStation => "Police Station",
        PoliticsTraining => "Politics Training Facility",
        Potato => "Potato Pancake Factory",
        Propulsion => "Propulsion System Factory",
        PyramidJunkSculpture => "Pyramid Junk Sculpture",
        Ravine => "Ravine",
        RockyOutcrop => "Rocky Outcropping",
        SAW => "Shield Against Weapons",
        SSLA => "Space Station Lab (A)",
        SSLB => "Space Station Lab (B)",
        SSLC => "Space Station Lab (C)",
        SSLD => "Space Station Lab (D)",
        Sand => "Patch of Sand",
        Security => "Security Ministry",
        Shake => "Beeldeban Protein Shake Factory",
        Shipyard => "Shipyard",
        Singularity => "Singularity Energy Plant",
        Soup => "Amalgus Bean Soup Cannery",
        SpaceJunkPark => "Space Junk Park",
        SpacePort => "Space Port",
        StationCommand => "Station Command Center",
        Stockpile => "Stockpile",
        SubspaceSupplyDepot => "Subspace Supply Depot",
        SupplyPod => "Supply Pod",
        Syrup => "Algae Syrup Bottler",
        TempleOfTheDrajilites => "Temple of the Drajilites",
        TerraformingLab => "Terraforming Lab",
        TerraformingPlatform => "Terraforming Platform",
        TheDillonForge => "The Dillon Forge",
        TheftTraining => "Theft Training Facility",
        ThemePark => "Theme Park",
        Trade => "Trade Ministry",
        Transporter => "Subspace Transporter",
        University => "University",
        Volcano => "Volcano",
        Warehouse => "Warehouse",
        WasteDigester => "Waste Digester",
        WasteEnergy => "Waste Energy Plant",
        WasteExchanger => "Waste Exchanger",
        WasteRecycling => "Waste Recycling Center",
        WasteSequestration => "Waste Sequestration Well",
        WasteTreatment => "Waste Treatment Center",
        WaterProduction => "Water Production Plant",
        WaterPurification => "Water Purification Plant",
        WaterReclamation => "Water Reclamation Facility",
        WaterStorage => "Water Storage Tank",
        Wheat => "Wheat Farm",
    );

    sub building_label{
        my( $building ) = @_;
        return $label{$building};
    }

    my %type_from_label =
        map {
            my $name = lc $label{$_};
            $name =~ s/[^\w]//g;
            $name => $_
        } keys %label;

    sub building_type_from_label {
        my( $name ) = @_;
        return unless defined $name;
        $name = lc $name;
        $name =~ s/[^\w]//g;
        return $type_from_label{$name};
    }
    
    sub building_types {
        my @types = keys %label;
        return wantarray ? @types : [@types];
    }
    
    sub building_labels {
        my @labels = values %label;
        return wantarray ? @labels : [@labels];
    }
}
{
    my %recipes = (
        AlgaePond => [[qw( uraninite methane)], ],
        AmalgusMeadow => [[qw( beryl trona)], ],
        Beach1 => [[qw( gypsum)], ],
        Beach10 => [[qw( gypsum methane)], ],
        Beach11 => [[qw( gypsum chromite)], ],
        Beach12 => [[qw( gypsum goethite)], ],
        Beach13 => [[qw( gypsum galena)], ],
        Beach2 => [[qw( gypsum gypsum)], ],
        Beach3 => [[qw( gypsum magnetite)], ],
        Beach4 => [[qw( gypsum uraninite)], ],
        Beach5 => [[qw( gypsum halite)], ],
        Beach6 => [[qw( gypsum rutile)], ],
        Beach7 => [[qw( gypsum chalcopyrite)], ],
        Beach8 => [[qw( gypsum sulfur)], ],
        Beach9 => [[qw( gypsum anthracite)], ],
        BeeldebanNest => [[qw( anthracite trona kerogen)], ],
        BlackHoleGenerator => [[qw( kerogen beryl anthracite monazite)], ],
        CitadelOfKnope => [[qw( beryl sulfur monazite galena)], ],
        CrashedShipSite => [[qw( monazite trona gold bauxite)], ],
        Crater => [[qw( rutile)], ],
        DentonBrambles => [[qw( rutile geothite)], ],
        GasGiantPlatform => [[qw( sulfur methane galena anthracite)], ],
        GeoThermalVent => [[qw( chalcopyrite sulfur)], ],
        GratchsGauntlet => [[qw( chromite bauxite gold kerogen)], ],
        Grove => [[qw( methane)], ],
        HallsOfVrbansk => [[qw( goethite halite gypsum trona)], [qw( gold anthracite uraninite bauxite)], [qw( kerogen methane sulfur zircon)], [qw( monazite fluorite beryl magnetite)], [qw( rutile chromite chalcopyrite galena)], ],
        InterDimensionalRift => [[qw( methane zircon fluorite)], ],
        KalavianRuins => [[qw( galena gold)], ],
        Lagoon => [[qw( chalcopyrite)], ],
        Lake => [[qw( goethite)], ],
        LapisForest => [[qw( halite anthracite)], ],
        LibraryOfJith => [[qw( anthracite bauxite beryl chalcopyrite)], ],
        MalcudField => [[qw( fluorite kerogen)], ],
        NaturalSpring => [[qw( magnetite halite)], ],
        OracleOfAnid => [[qw( gold uraninite bauxite goethite)], ],
        PantheonOfHagness => [[qw( gypsum trona beryl anthracite)], ],
        Ravine => [[qw( zircon methane galena fluorite)], ],
        RockyOutcrop => [[qw( trona)], ],
        Sand => [[qw( bauxite)], ],
        TempleOfTheDrajilites => [[qw( kerogen rutile chromite chalcopyrite)], ],
        TerraformingLab => [[qw( methane zircon magnetite beryl)], ],
        Volcano => [[qw( magnetite uraninite)], ],
    );
    sub building_glyph_recipes{
        my( $building ) = @_;
        return if !exists $recipes{$building};
        return wantarray ? @{ $recipes{$building} } : $recipes{$building}[0];
    }
}
{
    my %ships = (
        barge => {
            type_human => 'Barge',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        bleeder => {
            type_human => 'Bleeder',
            tags       => [
                'War',
            ],
        },
        cargo_ship => {
            type_human => 'Cargo Ship',
            tags       => [
                'Intelligence',
                'Mining',
                'Trade',
            ],
        },
        colony_ship => {
            type_human => 'Colony Ship',
            tags       => [
                'Colonization',
            ],
        },
        detonator => {
            type_human => 'Detonator',
            tags       => [
                'War',
            ],
        },
        dory => {
            type_human => 'Dory',
            tags       => [
                'Intelligence',
                'Mining',
                'Trade',
            ],
        },
        drone => {
            type_human => 'Drone',
            tags       => [
                'War',
            ],
        },
        excavator => {
            type_human => 'Excavator',
            tags       => [
                'Exploration',
            ],
        },
        fighter => {
            type_human => 'Fighter',
            tags       => [
                'War',
            ],
        },
        freighter => {
            type_human => 'Freighter',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        galleon => {
            type_human => 'Galleon',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        gas_giant_settlement_ship => {
            type_human => 'Gas Giant Settlement Ship',
            tags       => [
                'Colonization',
            ],
        },
        hulk => {
            type_human => 'Hulk',
            tags       => [
                'Mining',
                'Trade',
            ],
        },
        mining_platform_ship => {
            type_human => 'Mining Platform Ship',
            tags       => [
                'Mining',
            ],
        },
        observatory_seeker => {
            type_human => 'Observatory Seeker',
            tags       => [
                'War',
            ],
        },
        placebo => {
            type_human => 'Placebo',
            tags       => [
                'War',
            ],
        },
        placebo2 => {
            type_human => 'Placebo II',
            tags       => [
                'War',
            ],
        },
        placebo3 => {
            type_human => 'Placebo III',
            tags       => [
                'War',
            ],
        },
        placebo4 => {
            type_human => 'Placebo IV',
            tags       => [
                'War',
            ],
        },
        placebo5 => {
            type_human => 'Placebo V',
            tags       => [
                'War',
            ],
        },
        placebo6 => {
            type_human => 'Placebo VI',
            tags       => [
                'War',
            ],
        },
        probe => {
            type_human => 'Probe',
            tags       => [
                'Exploration',
                'Intelligence',
            ],
        },
        scanner => {
            type_human => 'Scanner',
            tags       => [
                'Exploration',
                'Intelligence',
            ],
        },
        scow => {
            type_human => 'Scow',
            tags       => [
                'War',
            ],
        },
        security_ministry_seeker => {
            type_human => 'Security Ministry Seeker',
            tags       => [
                'War',
            ],
        },
        short_range_colony_ship => {
            type_human => 'Short Range Colony Ship',
            tags       => [
                'Colonization',
            ],
        },
        smuggler_ship => {
            type_human => 'Smuggler Ship',
            tags       => [
                'Intelligence',
                'Mining',
                'Trade',
            ],
        },
        snark => {
            type_human => 'Snark',
            tags       => [
                'War',
            ],
        },
        snark2 => {
            type_human => 'Snark II',
            tags       => [
                'War',
            ],
        },
        snark3 => {
            type_human => 'Snark III',
            tags       => [
                'War',
            ],
        },
        space_station => {
            type_human => 'Space Station Hull',
            tags       => [
                'Intelligence',
                'War',
            ],
        },
        spaceport_seeker => {
            type_human => 'Spaceport Seeker',
            tags       => [
                'War',
            ],
        },
        spy_pod => {
            type_human => 'Spy Pod',
            tags       => [
                'Intelligence',
            ],
        },
        spy_shuttle => {
            type_human => 'Spy Shuttle',
            tags       => [
                'Intelligence',
            ],
        },
        stake => {
            type_human => 'Stake',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod => {
            type_human => 'Supply Pod',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod2 => {
            type_human => 'Supply Pod II',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod3 => {
            type_human => 'Supply Pod III',
            tags       => [
                'Colonization',
            ],
        },
        supply_pod4 => {
            type_human => 'Supply Pod IV',
            tags       => [
                'Colonization',
            ],
        },
        surveyor => {
            type_human => 'Surveyor',
            tags       => [
                'Exploration',
                'Intelligence',
            ],
        },
        sweeper => {
            type_human => 'Sweeper',
            tags       => [
                'War',
            ],
        },
        terraforming_platform_ship => {
            type_human => 'Terraforming Platform Ship',
            tags       => [
                'Colonization',
            ],
        },
        thud => {
            type_human => 'Thud',
            tags       => [
                'War',
            ],
        },
    );

    sub ship_types {
        return keys %ships;
    }
    sub ship_tags_list {
        my @tags = qw( Colonization Exploration Intelligence Mining Trade War );
        return wantarray ? @tags : [@tags];
    }
    sub ship_tags {
        my( $type ) = @_;
        return unless $type;
        my $tags = $ships{$type}{tags};
        return wantarray ? @$tags : [@$tags];
    }
    sub ship_type_human {
        my( $type ) = @_;
        return unless $type;
        return $ships{$type}{type_human};
    }
}
1;

__END__

=head1 NAME

Games::Lacuna::Client::Types

=head1 SYNOPSIS

    use Games::Lacuna::Client::Types;

=head1 FUNCTIONS

=over 4

=item food_types

=item ore_types

=item ship_types

=item ship_attribute_types

=item building_types

=item building_labels

=item ship_attribute_types

=item get_tags

=item tag_list

=item meta_building_list

=item meta_type

=item meta_type_list

=item building_label

=item building_type_from_label

=item building_glyph_recipes

=item ship_types

=item ship_attribute_types

=item ship_tags_list

=item ship_tags

=item ship_type_human

=item is_food_type

=item is_ore_type

=back

=cut
