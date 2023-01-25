RMenu.Add('animations', 'main', RageUI.CreateMenu("Animations", "~b~Menu~s~ Animations"))
RMenu.Add('animations', 'festives', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Festives"))
RMenu.Add('animations', 'salutations', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Salutations"))
RMenu.Add('animations', 'travail', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Travail"))
RMenu.Add('animations', 'humeurs', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Humeurs"))
RMenu.Add('animations', 'sports', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Sports"))
RMenu.Add('animations', 'divers', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Divers"))
RMenu.Add('animations', 'attitudes', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Attitudes"))
RMenu.Add('animations', 'pegi18', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Adulte +18"))
RMenu.Add('animations', 'info', RageUI.CreateSubMenu(RMenu:Get('animations', 'main'), "Animations", "~b~Menu~s~ Infomations"))

RageUI.CreateWhile(1.0, RMenu:Get('animations', 'main'), 170, function()

    RageUI.IsVisible(RMenu:Get('animations', 'main'), true, true, true, function()

        RageUI.Button("------------------------ Liste ~b~Animations~s~ -------------------------", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
            end
        end)

         --------------------------------------- Sous Menu -----------------------------
        RageUI.Button("Festives", "Animations Festives !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'festives'))
        RageUI.Button("Salutations", "Animations Salutations !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'salutations'))
        RageUI.Button("Travail", "Animations Travail !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'travail'))
        RageUI.Button("Humeurs", "Animations Humeurs !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'humeurs'))
        RageUI.Button("Sports", "Animations Sports !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'sports'))
        RageUI.Button("Divers", "Animations Divers !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'divers'))
        RageUI.Button("Attitudes", "Animations Attitudes !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'attitudes'))
        RageUI.Button("Adulte +18", "Animations Adulte +18 !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'pegi18'))
        RageUI.Button("------------------------- ~h~~r~Informations~s~ ---------------------", "Informations !", { RightLabel = "→→→" },true, function()
        end, RMenu:Get('animations', 'info'))

    end, function()
    end)

    RageUI.IsVisible(RMenu:Get('animations', 'festives'), true, true, true, function()


        RageUI.Button("Fumer une cigarette", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startScenario('WORLD_HUMAN_SMOKING')
            end
        end)
        RageUI.Button("Jouer de la musique", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startScenario('WORLD_HUMAN_MUSICIAN')
            end
        end)
        RageUI.Button("Dj", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('anim@mp_player_intcelebrationmale@dj', 'dj')
            end
        end)
        RageUI.Button("Boire une biere", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startScenario('WORLD_HUMAN_DRINKING')
            end
        end)
        RageUI.Button("Bière en zik", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startScenario('WORLD_HUMAN_PARTYING')
            end
        end)
        RageUI.Button("Air Guitar", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('anim@mp_player_intcelebrationmale@air_guitar', 'air_guitar')
            end
        end)
        RageUI.Button("Air Shagging", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('anim@mp_player_intcelebrationfemale@air_shagging', 'air_shagging')
            end
        end)
        RageUI.Button("Rock'n'roll", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('mp_player_int_upperrock', 'mp_player_int_rock')
            end
        end)
        RageUI.Button("Fumer un joint", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startScenario('WORLD_HUMAN_SMOKING_POT')
            end
        end)
        RageUI.Button("Bourré sur place", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('amb@world_human_bum_standing@drunk@idle_a', 'idle_a')
            end
        end)
        RageUI.Button("Vomir en voiture", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('oddjobs@taxi@tie', 'vomit_outside')
            end
        end)
    end, function()
    end)
        --------------------------------------- Salutations -----------------------------
        RageUI.IsVisible(RMenu:Get('animations', 'salutations'), true, true, true, function()


        RageUI.Button("Saluer", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('gestures@m@standing@casual', 'gesture_hello')
            end
        end)
        RageUI.Button("Serrer la main", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('mp_common', 'givetake1_a')
            end
        end)
        RageUI.Button("Tchek", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('mp_ped_interaction', 'handshake_guy_a')
            end
        end)
        RageUI.Button("Salut bandit", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('mp_ped_interaction', 'hugs_guy_a')
            end
        end)
        RageUI.Button("Salut Militaire", "", {}, true, function(Hovered, Active, Selected)
            if (Selected) then
                startAnim('mp_player_int_uppersalute', 'mp_player_int_salute')
            end
        end)
    end, function()
    end)
         --------------------------------------- Travail -----------------------------
         RageUI.IsVisible(RMenu:Get('animations', 'travail'), true, true, true, function()

            RageUI.Button("Suspect : se rendre à la police", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('random@arrests@busted','idle_c')
                end
            end)
            RageUI.Button("Pêcheur", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('world_human_stand_fishing')
                end
            end)
            RageUI.Button("Police : enquêter", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@code_human_police_investigate@idle_b','idle_f')
                end
            end)
            RageUI.Button("Police : parler à la radio", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('random@arrests','generic_radio_chatter')
                end
            end)
            RageUI.Button("Police : circulation", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_CAR_PARK_ATTENDANT')
                end
            end)
            RageUI.Button("Police : jumelles", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_BINOCULARS')
                end
            end)
            RageUI.Button("Agriculture : récolter", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('world_human_gardener_plant')
                end
            end)
            RageUI.Button("Dépanneur : réparer le moteur", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@repair', 'fixing_a_ped')
                end
            end)
            RageUI.Button("Médecin : observer", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('CODE_HUMAN_MEDIC_KNEEL')
                end
            end)
            RageUI.Button("Taxi : parler au client", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('oddjobs@taxi@driver', 'leanover_idle')
                end
            end)
            RageUI.Button("Taxi : donner la facture", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('oddjobs@taxi@cyi', 'std_hand_off_ps_passenger')
                end
            end)
            RageUI.Button("Epicier : donner les courses", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_am_hold_up', 'purchase_beerbox_shopkeeper')
                end
            end)
            RageUI.Button("Barman : servir un shot", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@drinking', 'shots_barman_b')
                end
            end)
            RageUI.Button("Journaliste : Prendre une photo", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_PAPARAZZI')
                end
            end)
            RageUI.Button("Tout métiers : Prendre des notes", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_CLIPBOARD')
                end
            end)
            RageUI.Button("Tout métiers : Coup de marteau", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_HAMMERING')
                end
            end)
            RageUI.Button("Clochard : Faire la manche", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_BUM_FREEWAY')
                end
            end)
            RageUI.Button("Clochard : Faire la statue", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_HUMAN_STATUE')
                end
            end)
        end, function()
        end)

            --------------------------------------- Humeurs -----------------------------
        RageUI.IsVisible(RMenu:Get('animations', 'humeurs'), true, true, true, function()

            RageUI.Button("Féliciter", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_CHEERING')
                end
            end)
            RageUI.Button("Super", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_action', 'thanks_male_06')
                end
            end)
            RageUI.Button("Toi", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('gestures@m@standing@casual', 'gesture_point')
                end
            end)
            RageUI.Button("Viens", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('gestures@m@standing@casual', 'gesture_come_here_soft')
                end
            end)
            RageUI.Button("Keskya ?", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('gestures@m@standing@casual', 'gesture_bring_it_on')
                end
            end)
            RageUI.Button("A moi", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('gestures@m@standing@casual', 'gesture_me')
                end
            end)
            RageUI.Button("Je le savais", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('anim@am_hold_up@male', 'shoplift_high')
                end
            end)
            RageUI.Button("Etre épuisé", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_jog_standing@male@idle_b', 'idle_d')
                end
            end)
            RageUI.Button("Je suis dans la merde", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_bum_standing@depressed@idle_a', 'idle_a')
                end
            end)
            RageUI.Button("Facepalm", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('anim@mp_player_intcelebrationmale@face_palm', 'face_palm')
                end
            end)
            RageUI.Button("Calme-toi", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('gestures@m@standing@casual', 'gesture_easy_now')
                end
            end)
            RageUI.Button("Qu'est ce que j'ai fait", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('oddjobs@assassinate@multi@', 'react_big_variations_a')
                end
            end)
            RageUI.Button("Avoir peur", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@code_human_cower_stand@male@react_cowering', 'base_right')
                end
            end)
            RageUI.Button("Fight ?", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('anim@deathmatch_intros@unarmed', 'intro_male_unarmed_e')
                end
            end)
            RageUI.Button("C'est pas Possible", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('gestures@m@standing@casual', 'gesture_damn')
                end
            end)
            RageUI.Button("Enlacer", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_ped_interaction', 'kisses_guy_a')
                end
            end)
            RageUI.Button("Doigt d'honneur", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_player_int_upperfinger', 'mp_player_int_finger_01_enter')
                end
            end)
            RageUI.Button("Branleur", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_player_int_upperwank', 'mp_player_int_wank_01')
                end
            end)
            RageUI.Button("Balle dans la tete", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_suicide', 'pistol')
                end
            end)
        end, function()
        end)

         --------------------------------------- Sport -----------------------------
         RageUI.IsVisible(RMenu:Get('animations', 'sports'), true, true, true, function()

            RageUI.Button("Montrer ses muscles", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_muscle_flex@arms_at_side@base', 'base')
                end
            end)
            RageUI.Button("Barre de musculation", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_muscle_free_weights@male@barbell@base', 'base')
                end
            end)
            RageUI.Button("Faire des pompes", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_push_ups@male@base', 'base')
                end
            end)
            RageUI.Button("Faire des abdos", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_sit_ups@male@base', 'base')
                end
            end)
            RageUI.Button("Faire du yoga", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_yoga@male@base', 'base_a')
                end
            end)
        end, function()
        end)
        --------------------------------------- Divers ----------------------------------------------
        RageUI.IsVisible(RMenu:Get('animations', 'divers'), true, true, true, function()

            RageUI.Button("Boire un café", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('amb@world_human_aa_coffee@idle_a', 'idle_a')
                end
            end)
            RageUI.Button("S'asseoir", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('anim@heists@prison_heistunfinished_biztarget_idle', 'target_idle')
                end
            end)
            RageUI.Button("Attendre contre un mur", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('world_human_leaning')
                end
            end)
            RageUI.Button("Couché sur le dos", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_SUNBATHE_BACK')
                end
            end)
            RageUI.Button("Couché sur le ventre", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_SUNBATHE')
                end
            end)
            RageUI.Button("Nettoyer quelque chose", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('world_human_maid_clean')
                end
            end)
            RageUI.Button("Préparer à manger", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('PROP_HUMAN_BBQ')
                end
            end)
            RageUI.Button("Position de Fouille", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@prostitutes@sexlow_veh', 'low_car_bj_to_prop_female')
                end
            end)
            RageUI.Button("Prendre un selfie", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('world_human_tourist_mobile')
                end
            end)
            RageUI.Button("Ecouter à une porte", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@safe_cracking', 'idle_base')
                end
            end)
        end, function()
        end)
        -------------------------------------------- Attitudes ----------------------------------------------
        RageUI.IsVisible(RMenu:Get('animations', 'attitudes'), true, true, true, function()

            RageUI.Button("Normal M", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@confident', 'move_m@confident')
                end
            end)
            RageUI.Button("Normal F", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_f@heels@c', 'move_f@heels@c')
                end
            end)
            RageUI.Button("Depressif M", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@depressed@a', 'move_m@depressed@a')
                end
            end)
            RageUI.Button("Depressif F", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_f@depressed@a', 'move_f@depressed@a')
                end
            end)
            RageUI.Button("Business", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@business@a', 'move_m@business@a')
                end
            end)
            RageUI.Button("Determine", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@brave@a', 'move_m@brave@a')
                end
            end)
            RageUI.Button("Casual", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@casual@a', 'move_m@casual@a')
                end
            end)
            RageUI.Button("Trop mange", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@fat@a', 'move_m@fat@a')
                end
            end)
            RageUI.Button("Hipster", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@hipster@a', 'move_m@hipster@a')
                end
            end)
            RageUI.Button("Blesse", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@injured', 'move_m@injured')
                end
            end)
            RageUI.Button("Intimide", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@hurry@a', 'move_m@hurry@a')
                end
            end)
            RageUI.Button("Hobo", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@hobo@a', 'move_m@hobo@a')
                end
            end)
            RageUI.Button("Malheureux", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@sad@a', 'move_m@sad@a')
                end
            end)
            RageUI.Button("Muscle", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@muscle@a', 'move_m@muscle@a')
                end
            end)
            RageUI.Button("Choc", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@shocked@a', 'move_m@shocked@a')
                end
            end)
            RageUI.Button("Sombre", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@shadyped@a', 'move_m@shadyped@a')
                end
            end)
            RageUI.Button("Fatigue", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@buzzed', 'move_m@buzzed')
                end
            end)
            RageUI.Button("Pressee", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@hurry_butch@a', 'move_m@hurry_butch@a')
                end
            end)
            RageUI.Button("Fier", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@money', 'move_m@money')
                end
            end)
            RageUI.Button("Petite course", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_m@quick', 'move_m@quick')
                end
            end)
            RageUI.Button("Mangeuse d'homme", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_f@maneater', 'move_f@maneater')
                end
            end)
            RageUI.Button("Impertinent", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_f@sassy', 'move_f@sassy')
                end
            end)
            RageUI.Button("Arrogante", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAttitude('move_f@arrogant@a', 'move_f@arrogant@a')
                end
            end)
        end, function()
        end)
        -------------------------------------------- Adulte ----------------------------------------------
        RageUI.IsVisible(RMenu:Get('animations', 'pegi18'), true, true, true, function()

            RageUI.Button("Homme se faire su*** en voiture", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('oddjobs@towing', 'm_blow_job_loop')
                end
            end)
            RageUI.Button("Femme faire une gaterie en voiture", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('oddjobs@towing', 'f_blow_job_loop')
                end
            end)
            RageUI.Button("Homme bais** en voiture", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@prostitutes@sexlow_veh', 'low_car_sex_loop_player')
                end
            end)
            RageUI.Button("Femme bais** en voiture", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@prostitutes@sexlow_veh', 'low_car_sex_loop_female')
                end
            end)
            RageUI.Button("Se gratter les couilles", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mp_player_int_uppergrab_crotch', 'mp_player_int_grab_crotch')
                end
            end)
            RageUI.Button("Faire du charme", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@strip_club@idles@stripper', 'stripper_idle_02')
                end
            end)
            RageUI.Button("Pose michto", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startScenario('WORLD_HUMAN_PROSTITUTE_HIGH_CLASS')
                end
            end)
            RageUI.Button("Montrer sa poitrine", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@strip_club@backroom@', 'stripper_b_backroom_idle_b')
                end
            end)
            RageUI.Button("Strip Tease 1", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@strip_club@lap_dance@ld_girl_a_song_a_p1', 'ld_girl_a_song_a_p1_f')
                end
            end)
            RageUI.Button("Strip Tease 2", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@strip_club@private_dance@part2', 'priv_dance_p2')
                end
            end)
            RageUI.Button("Stip Tease au sol", "", {}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    startAnim('mini@strip_club@private_dance@part3', 'priv_dance_p3')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('animations', 'info'), true, true, true, function()
        RageUI.Button("~b~Author~s~ : PowX#2629", "", {}, true, function(Hovered, Active, Selected)
        if (Selected) then
        end
    end)
    RageUI.Button("------------------------------------------------------------------------", "", {}, true, function(Hovered, Active, Selected)
        if (Selected) then
        end
    end)
    RageUI.Button("~b~Github~s~ : github.com/ItsPowXX", "", {}, true, function(Hovered, Active, Selected)
        if (Selected) then
        end
    end)
    RageUI.Button("------------------------------------------------------------------------", "", {}, true, function(Hovered, Active, Selected)
        if (Selected) then
        end
    end)
    RageUI.Button("~b~Version~s~ : 1.0.0", "", {}, true, function(Hovered, Active, Selected)
        if (Selected) then
        end
    end)

    end, function()
        ---Panels
      
    end)

end)


-- Fonction

local isDead = false
local inAnim = false
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx:onPlayerDeath', function(data) isDead = true end)

AddEventHandler('playerSpawned', function(spawn) isDead = false end)

function startAttitude(lib, anim)
	ESX.Streaming.RequestAnimSet(lib, function()
		SetPedMovementClipset(PlayerPedId(), anim, true)
	end)
end

function startAnim(lib, anim)
	ESX.Streaming.RequestAnimDict(lib, function()
		TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0.0, false, false, false)
	end)
end

function startScenario(anim)
	TaskStartScenarioInPlace(PlayerPedId(), anim, 0, false)
end

-- By PowX#2629
