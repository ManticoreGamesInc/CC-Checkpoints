Assets {
  Id: 7000803238348480475
  Name: "Checkpoints"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12281728941650299571
      Objects {
        Id: 12281728941650299571
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 15504569856828255366
            }
            ReferencedAssets {
              Id: 17064066484446909498
            }
          }
        }
      }
    }
    Assets {
      Id: 17064066484446909498
      Name: "Checkpoints"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 2747162148179311879
          Objects {
            Id: 2747162148179311879
            Name: "Checkpoints"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 8013159038992860190
            ChildIds: 687541872217447292
            UnregisteredParameters {
              Overrides {
                Name: "cs:UsePriority"
                Bool: false
              }
              Overrides {
                Name: "cs:UsePersistence"
                Bool: false
              }
              Overrides {
                Name: "cs:UsePriority:tooltip"
                String: "The index of the checkpoint table\'s row will determine the priority level. Lower priority checkpoints will be ignored if the player has reached higher priority checkpoints."
              }
              Overrides {
                Name: "cs:UsePersistence:tooltip"
                String: "Using persistent storate will allow player\'s checkpoints to be saved across different play sessions. Make sure to Enable Player Storage in the Game Settings properties."
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8013159038992860190
            Name: "Checkpoints_Server"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2747162148179311879
            UnregisteredParameters {
              Overrides {
                Name: "cs:CheckpointsTable"
                AssetReference {
                  Id: 8332792590386797339
                }
              }
              Overrides {
                Name: "cs:ComponentRoot"
                ObjectReference {
                  SubObjectId: 2747162148179311879
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 14164540954240242741
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 687541872217447292
            Name: "Checkpoints_README"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2747162148179311879
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 12550258796574897418
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 12550258796574897418
      Name: "Checkpoints_README"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\n\r\n   _____ _               _                _       _       \r\n  / ____| |             | |              (_)     | |      \r\n | |    | |__   ___  ___| | ___ __   ___  _ _ __ | |_ ___ \r\n | |    | \'_ \\ / _ \\/ __| |/ / \'_ \\ / _ \\| | \'_ \\| __/ __|\r\n | |____| | | |  __/ (__|   <| |_) | (_) | | | | | |_\\__ \\\r\n  \\_____|_| |_|\\___|\\___|_|\\_\\ .__/ \\___/|_|_| |_|\\__|___/\r\n                             | |                          \r\n                             |_|                          \r\n\r\nThe Checkpoints component allows players to save spawn locations based on certain actions.\r\n\r\nSome action examples could be:\r\n\r\n-Entering a trigger\r\n-Interacting with a trigger\r\n-Killing the final boss\r\n\r\n====\r\nNOTE\r\n====\r\nIf the Dependent folders are empty in Project Content under Imported Content for this component, save and reload the project to fix it.\r\n\r\n=====\r\nSetup\r\n=====\r\n\r\nFor a full example, drag and drop the Checkpoints Example template into the Hierarchy.\r\n\r\nMake sure to activate the Enable Player Storage property inside the Game Settings.\r\n\r\nThis template will have multiple examples of triggers that act as checkpoints and destroying the crate is also a checkpoint.\r\n\r\nThere is also an example to reset progress through the portal at the end.\r\n\r\nIf you want to create the checkpoints from scratch, then drag and drop the Checkpoints template instead.\r\n\r\nThe checkpoints are connected using a data table. See below for more information on how to create checkpoints.\r\n\r\n==========\r\nHow to use\r\n==========\r\n\r\n=================\r\nCustom Properties\r\n=================\r\n\r\nThe Checkpoints template contains 2 custom properties on the root of the template.\r\n\r\n- Use Priority\r\n\r\nPriority is given to checkpoints based on the row value inside the CheckpointsTable data table.\r\nPlayers will only activate checkpoints if it is higher priority to their previous checkpoint.\r\nThis is useful if you want to prevent older checkpoints in a level from being re-activated.\r\n\r\n- Use Persistence\r\n\r\nThis will enable Player Storage so the player\'s last saved checkpoint will be saved for future play sessions.\r\nMake sure to activate the Enable Player Storage property inside the Game Settings.\r\n\r\n==================\r\nCreate Checkpoints\r\n==================\r\n\r\nCreating checkpoints is easy. Open the CheckpointsTable data table by finding it in the Project Content or server script properties.\r\n\r\nAdd a new row to the table. You will have 5 columns:\r\n\r\n- Position\r\n\r\nThis is a Core Object Reference of a dummy object to represent where the player torso will be spawned for this checkpoint.\r\n\r\n- Trigger\r\n\r\nThis is a Core Object Reference of a trigger that will activate the checkpoint to be saved. Leave empty if not using a trigger.\r\nThe server script will connect the overlap or interact event based on the trigger\'s isInteractable property.\r\n\r\n- Event\r\n\r\nThis is a string of an event name that will be connect to activate the checkpoint. See below on how to broadcast to the event.\r\n\r\n- OnSpawnEffects\r\n\r\nThis is an Asset Reference to a template of effects that will be spawned when the players spawns at the checkpoint. Leave empty for no effects.\r\nThe template needs to be networked. Suggested to use a networked Client Context.\r\n\r\n- OnActiveEffects\r\n\r\nThis is an Asset Reference to a template of effects that will be spawned when the players activates the checkpoint. Leave empty for no effects.\r\nThe template needs to be networked. Suggested to use a networked Client Context.\r\n\r\n======\r\nEvents\r\n======\r\n\r\nThe server script has connected events that can be broadcasted to from other scripts to reset player\'s checkpoints or activate a checkpoint.\r\n\r\nIf a checkpoints in the data table has an Event string column value, then another script can broadcast it to activate the checkpoint.\r\nThe event needs a reference to the player activating the checkpoint, like so:\r\n\r\n`Events.Broadcast(\"EventString\", playerReference)`\r\n\r\nIf a player\'s checkpoint needs to be force set to a value or reset to default spawn point, then broadcast the \"ForceSave\" event.\r\nThe event needs a player reference and the desired row index of the CheckpointsTable data table. Any unsuitable index (such as 0) will reset checkpoints.\r\nThis will ignore the UsePriority property, so a player\'s checkpoint can be set to any index.\r\n\r\n`Events.Broadcast(\"ForceSave\", playerReference, indexNumber)`\r\n\r\n]]--"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 8332792590386797339
      Name: "CheckpointsTable"
      PlatformAssetType: 31
      VirtualFolderPath: "Checkpoints"
      DataTableAsset {
        Columns {
          Name: "Position"
          Type: 9
        }
        Columns {
          Name: "Trigger"
          Type: 9
        }
        Columns {
          Name: "Event"
          Type: 3
        }
        Columns {
          Name: "OnSpawnEffects"
          Type: 7
        }
        Columns {
          Name: "OnActivateEffects"
          Type: 7
        }
      }
    }
    Assets {
      Id: 14164540954240242741
      Name: "Checkpoints_Server"
      PlatformAssetType: 3
      TextAsset {
        Text: "local CHECKPOINTS_TABLE = require(script:GetCustomProperty(\"CheckpointsTable\"))\r\nlocal COMPONENT_ROOT = script:GetCustomProperty(\"ComponentRoot\"):WaitForObject()\r\n\r\nlocal USE_PRIORITY = COMPONENT_ROOT:GetCustomProperty(\"UsePriority\")\r\nlocal USE_PERSISTENCE = COMPONENT_ROOT:GetCustomProperty(\"UsePersistence\")\r\n\r\nlocal playerCheckpoints = {}\r\nlocal checkpointsAmount = 0\r\n\r\nfor _ in ipairs(CHECKPOINTS_TABLE) do checkpointsAmount = checkpointsAmount + 1 end\r\n\r\nlocal function SpawnEffect(player, effect)\r\n\tWorld.SpawnAsset(effect, {position = player:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED})\r\nend\r\n\r\nlocal function OnPlayerSpawn(player, ps, sk)\r\n\tif playerCheckpoints[player.id] then\r\n\t\tlocal index = playerCheckpoints[player.id].respawnIndex or 0\r\n\t\tif index > 0 and index <= checkpointsAmount then\r\n\t\t\tlocal pos = CHECKPOINTS_TABLE[index].Position:GetObject()\r\n\t\t\tif pos then\r\n\t\t\t\tplayer:SetWorldPosition(pos:GetWorldPosition())\r\n\t\t\t\tlocal spawnEffect = CHECKPOINTS_TABLE[index].OnSpawnEffects\r\n\t\t\t\tif spawnEffect then\r\n\t\t\t\t\tSpawnEffect(player, spawnEffect)\r\n\t\t\t\tend\r\n\t\t\tend\r\n\t\tend\r\n\tend\r\nend\r\n\r\nlocal function SaveRespawn(player, index, forceSave)\r\n\tif playerCheckpoints[player.id] then\r\n\t\tif not forceSave and (index == playerCheckpoints[player.id].respawnIndex or (index < playerCheckpoints[player.id].respawnIndex and USE_PRIORITY)) then\r\n\t\t\treturn\r\n\t\tend\r\n\t\tplayerCheckpoints[player.id].respawnIndex = index\r\n\t\t\r\n\t\tif index > 0 and index <= checkpointsAmount then\r\n\t\t\tlocal activateEffect = CHECKPOINTS_TABLE[index].OnActivateEffects\r\n\t\t\tif activateEffect then\r\n\t\t\t\tSpawnEffect(player, activateEffect)\r\n\t\t\tend\r\n\t\tend\r\n\tend\r\nend\r\n\r\nlocal function OnInteracted(trigger, other, index)\r\n\tif other:IsA(\"Player\") then\r\n\t\tSaveRespawn(other, index)\r\n\tend\r\nend\r\n\r\nlocal function OnBeginOverlap(trigger, other, index)\r\n\tif other:IsA(\"Player\") then\r\n\t\tSaveRespawn(other, index)\r\n\tend\r\nend\r\n\r\nlocal function OnPlayerJoined(player)\r\n\tif USE_PERSISTENCE then\r\n\t\tlocal data = Storage.GetPlayerData(player)\r\n\t\tplayerCheckpoints[player.id] = {respawnIndex = data.respawnIndex or 0}\r\n\t\tOnPlayerSpawn(player, nil, nil)\r\n\telse\r\n\t\tplayerCheckpoints[player.id] = {respawnIndex = 0}\r\n\tend\r\n\tplayer.spawnedEvent:Connect(OnPlayerSpawn)\r\nend\r\n\r\nlocal function OnPlayerLeft(player)\r\n\tif USE_PERSISTENCE then\r\n\t\tlocal data = Storage.GetPlayerData(player)\r\n\t\tdata.respawnIndex = playerCheckpoints[player.id].respawnIndex\r\n\t\tStorage.SetPlayerData(player, data)\r\n\tend\r\n\tplayerCheckpoints[player.id] = nil\r\nend\r\n\r\nGame.playerJoinedEvent:Connect(OnPlayerJoined)\r\nGame.playerLeftEvent:Connect(OnPlayerLeft)\r\n\r\nfor index, cp in ipairs(CHECKPOINTS_TABLE) do\r\n\tif cp.Trigger and cp.Trigger:GetObject() ~= nil then\r\n\t\tlocal trigger = cp.Trigger:GetObject()\r\n\t\tif trigger then\r\n\t\t\tif trigger.isInteractable then\r\n\t\t\t\ttrigger.interactedEvent:Connect(OnInteracted, index)\r\n\t\t\telse\r\n\t\t\t\ttrigger.beginOverlapEvent:Connect(OnBeginOverlap, index)\r\n\t\t\tend\r\n\t\tend\r\n\tend\r\n\tif cp.Event and cp.Event ~= \"\" then\r\n\t\tEvents.Connect(cp.Event, SaveRespawn, index)\r\n\tend\r\nend\r\n\r\nEvents.Connect(\"ForceSave\", SaveRespawn, true)\r\n"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 15504569856828255366
      Name: "Checkpoints Example"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 5559652297330802765
          Objects {
            Id: 5559652297330802765
            Name: "Checkpoints Example"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 8505388940717845855
            ChildIds: 7953168329328613579
            ChildIds: 11392862475253155501
            ChildIds: 12905933782314020862
            ChildIds: 14069807948467438145
            ChildIds: 14944514074676809850
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8505388940717845855
            Name: "Spawn Components"
            Transform {
              Location {
                Y: -5.6315918
                Z: -350
              }
              Rotation {
                Yaw: -89.9999542
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5559652297330802765
            ChildIds: 6712917815165940519
            ChildIds: 7232453493292339998
            ChildIds: 1916400327847348446
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6712917815165940519
            Name: "Kill Zone"
            Transform {
              Location {
              }
              Rotation {
                Yaw: 89.9999619
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 8505388940717845855
            ChildIds: 15167711025044972642
            ChildIds: 15959010892623518144
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15167711025044972642
            Name: "KillTrigger"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1000
                Y: 1000
                Z: 1
              }
            }
            ParentId: 6712917815165940519
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Trigger {
              TeamSettings {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              TriggerShape_v2 {
                Value: "mc:etriggershape:box"
              }
              InteractionTemplate {
              }
              BreadcrumbTemplate {
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15959010892623518144
            Name: "KillZoneServer"
            Transform {
              Location {
                Z: -6.10351563e-05
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 6712917815165940519
            UnregisteredParameters {
              Overrides {
                Name: "cs:KillTrigger"
                ObjectReference {
                  SubObjectId: 15167711025044972642
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 3908110495107565482
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7232453493292339998
            Name: "Spawn Settings"
            Transform {
              Location {
                Z: 329.381592
              }
              Rotation {
                Yaw: 89.9999619
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 8505388940717845855
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Settings {
              RespawnSettings {
                RespawnDelay: 2
                RespawnMode_v2 {
                  Value: "mc:erespawnmode:random"
                }
                StartSpawned: true
                SpawnMode {
                  Value: "mc:espawnmode:random"
                }
              }
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 1916400327847348446
            Name: "Spawn Point"
            Transform {
              Location {
                Z: 394.381592
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 8505388940717845855
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:alwaysvisible"
            }
            PlayerSpawnPoint {
              TeamInt: 1
              PlayerScaleMultiplier: 1
              SpawnKey: "Checkpoints Example"
              SpawnEffectsTemplate {
                Id: 841534158063459245
              }
              ShouldDecrowdPlayers: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7953168329328613579
            Name: "Platforms"
            Transform {
              Location {
                Y: -3630.63159
                Z: -70.6184082
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5559652297330802765
            ChildIds: 4332578494754884525
            ChildIds: 16687462878985477508
            ChildIds: 16075219408958820557
            ChildIds: 9858674019747720023
            ChildIds: 4967018837200544230
            ChildIds: 18070362033692970293
            ChildIds: 16461050677480622903
            ChildIds: 18265912787258092406
            ChildIds: 14351486545924488508
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4332578494754884525
            Name: "Cube"
            Transform {
              Location {
                Y: 3625
              }
              Rotation {
              }
              Scale {
                X: 12.1880789
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16687462878985477508
            Name: "Cube"
            Transform {
              Location {
                Y: 2413.80444
              }
              Rotation {
              }
              Scale {
                X: 2.85658741
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16075219408958820557
            Name: "Cube"
            Transform {
              Location {
                Y: 1200
              }
              Rotation {
              }
              Scale {
                X: 12.1880789
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9858674019747720023
            Name: "Cube"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 2.85658741
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4967018837200544230
            Name: "Cube"
            Transform {
              Location {
                Y: -1200
              }
              Rotation {
              }
              Scale {
                X: 12.1880789
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18070362033692970293
            Name: "Cube"
            Transform {
              Location {
                Y: -2400
              }
              Rotation {
              }
              Scale {
                X: 2.85658741
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16461050677480622903
            Name: "Cube"
            Transform {
              Location {
                Y: -3600
              }
              Rotation {
              }
              Scale {
                X: 12.1880789
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18265912787258092406
            Name: "Cube"
            Transform {
              Location {
                Y: -4800
              }
              Rotation {
              }
              Scale {
                X: 2.85658741
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14351486545924488508
            Name: "Cube"
            Transform {
              Location {
                Y: -6000
              }
              Rotation {
              }
              Scale {
                X: 12.1880789
                Y: 12.1880789
                Z: 0.243761584
              }
            }
            ParentId: 7953168329328613579
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 3107339980388704468
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 11392862475253155501
            Name: "Text Signs"
            Transform {
              Location {
                Y: -6231.25
                Z: 525
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5559652297330802765
            ChildIds: 15278822540801958126
            ChildIds: 4284880857645070872
            ChildIds: 16313319363052855635
            ChildIds: 5171090140162967835
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15278822540801958126
            Name: "Checkpoint 1 Text"
            Transform {
              Location {
                Y: 3831.25
              }
              Rotation {
                Yaw: 89.9999924
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11392862475253155501
            ChildIds: 7790662430435078538
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Text {
              Text: "Checkpoint 1\r\nTrigger Interact"
              FontAsset {
              }
              Color {
                R: 1
                G: 1
                B: 1
                A: 1
              }
              HorizontalAlignment {
                Value: "mc:ecoretexthorizontalalign:center"
              }
              VerticalAlignment {
                Value: "mc:ecoretextverticalalign:center"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7790662430435078538
            Name: "Cube - Bottom-Aligned"
            Transform {
              Location {
                X: -15.2382813
                Y: -7.62939453e-06
                Z: -175
              }
              Rotation {
                Yaw: -89.9999847
              }
              Scale {
                X: 6.25
                Y: 0.25
                Z: 2.75
              }
            }
            ParentId: 15278822540801958126
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 10184847056121543272
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 534095032646055151
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4284880857645070872
            Name: "Checkpoint 2 Text"
            Transform {
              Location {
                Y: 1381.25
              }
              Rotation {
                Yaw: 89.9999847
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11392862475253155501
            ChildIds: 533951471031728033
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Text {
              Text: "Checkpoint 2\r\nTrigger Overlap"
              FontAsset {
              }
              Color {
                R: 1
                G: 1
                B: 1
                A: 1
              }
              HorizontalAlignment {
                Value: "mc:ecoretexthorizontalalign:center"
              }
              VerticalAlignment {
                Value: "mc:ecoretextverticalalign:center"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 533951471031728033
            Name: "Cube - Bottom-Aligned"
            Transform {
              Location {
                X: -15.2382813
                Y: -7.62939453e-06
                Z: -175
              }
              Rotation {
                Yaw: -89.9999847
              }
              Scale {
                X: 6.25
                Y: 0.25
                Z: 2.75
              }
            }
            ParentId: 4284880857645070872
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 10184847056121543272
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 534095032646055151
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16313319363052855635
            Name: "Checkpoint 3 Text"
            Transform {
              Location {
                Y: -1268.75
              }
              Rotation {
                Yaw: 89.9999771
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11392862475253155501
            ChildIds: 16705576710303420005
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Text {
              Text: "Checkpoint 3\r\nExternal script broadcasting event\r\nDestroy crate to activate"
              FontAsset {
              }
              Color {
                R: 1
                G: 1
                B: 1
                A: 1
              }
              HorizontalAlignment {
                Value: "mc:ecoretexthorizontalalign:center"
              }
              VerticalAlignment {
                Value: "mc:ecoretextverticalalign:center"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16705576710303420005
            Name: "Cube - Bottom-Aligned"
            Transform {
              Location {
                X: -15.2382813
                Y: -7.62939453e-06
                Z: -175
              }
              Rotation {
                Yaw: -89.9999771
              }
              Scale {
                X: 6.25
                Y: 0.25
                Z: 2.75
              }
            }
            ParentId: 16313319363052855635
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 10184847056121543272
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 534095032646055151
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5171090140162967835
            Name: "ForceSave Text"
            Transform {
              Location {
                Y: -3943.75
              }
              Rotation {
                Yaw: 89.9999619
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11392862475253155501
            ChildIds: 16825559671532565484
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Text {
              Text: "\"ForceSave\" Event\r\nOverlapping the trigger will broadcast\r\nthe \"ForceSave\" event to reset a player\'s checkpoint"
              FontAsset {
              }
              Color {
                R: 1
                G: 1
                B: 1
                A: 1
              }
              HorizontalAlignment {
                Value: "mc:ecoretexthorizontalalign:center"
              }
              VerticalAlignment {
                Value: "mc:ecoretextverticalalign:center"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16825559671532565484
            Name: "Cube - Bottom-Aligned"
            Transform {
              Location {
                X: -15.2382813
                Y: -7.62939453e-06
                Z: -175
              }
              Rotation {
                Yaw: -89.9999619
              }
              Scale {
                X: 6.25
                Y: 0.25
                Z: 2.75
              }
            }
            ParentId: 5171090140162967835
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 10184847056121543272
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 534095032646055151
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12905933782314020862
            Name: "Props"
            Transform {
              Location {
                Y: -5480.63184
                Z: -70.6184082
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5559652297330802765
            ChildIds: 9170861226300826950
            ChildIds: 11756330246859482280
            ChildIds: 3805753913905047736
            ChildIds: 4804721138835374654
            ChildIds: 215565315193733872
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9170861226300826950
            Name: "Sci-fi Terminal 01 (Prop)"
            Transform {
              Location {
                Y: 3075
                Z: 12.2005005
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12905933782314020862
            ChildIds: 6432488313037037794
            ChildIds: 11425508347299551845
            ChildIds: 17362666962627410780
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6432488313037037794
            Name: "Sci-fi Terminal Base 01"
            Transform {
              Location {
                Y: 5
                Z: 0.000122070313
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9170861226300826950
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceon"
            }
            CoreMesh {
              MeshAsset {
                Id: 13613791909257878711
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 11425508347299551845
            Name: "Sci-fi Console Screen 01"
            Transform {
              Location {
                Y: -5
                Z: 117
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9170861226300826950
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_Detail3:id"
                AssetReference {
                  Id: 5856429651633438801
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceon"
            }
            CoreMesh {
              MeshAsset {
                Id: 10993237832432372474
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 17362666962627410780
            Name: "Sci-fi Terminal Keyboard 01"
            Transform {
              Location {
                Y: 5
                Z: 142
              }
              Rotation {
                Roll: 33.7501144
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9170861226300826950
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceon"
            }
            CoreMesh {
              MeshAsset {
                Id: 10869945471657645318
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 11756330246859482280
            Name: "Checkpoint Platform"
            Transform {
              Location {
                Y: 625
                Z: 25
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12905933782314020862
            ChildIds: 12083219988334856520
            ChildIds: 18440347170948560365
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12083219988334856520
            Name: "Cube"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 3.5
                Y: 3.5
                Z: 0.5
              }
            }
            ParentId: 11756330246859482280
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 8926360128358697326
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            CoreMesh {
              MeshAsset {
                Id: 12095835209017042614
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18440347170948560365
            Name: "Magic Circle Aura"
            Transform {
              Location {
                Z: 25
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11756330246859482280
            ChildIds: 15252247080540776419
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15252247080540776419
            Name: "Magic Circle Aura"
            Transform {
              Location {
                Z: 14.8526802
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 18440347170948560365
            ChildIds: 4277809310272809976
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4277809310272809976
            Name: "MCG: Fantasy - Outer Ring Inner"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.6063211
                Y: 1.6063211
                Z: 1.6063211
              }
            }
            ParentId: 15252247080540776419
            ChildIds: 6781704678509727130
            ChildIds: 15760319312076295598
            ChildIds: 1208638183503608178
            ChildIds: 12743525995237789633
            ChildIds: 2080356134295508534
            ChildIds: 17682598410617598439
            ChildIds: 15832014770208410961
            ChildIds: 6966315894827924428
            ChildIds: 7071599951411310564
            ChildIds: 3226689714587119533
            ChildIds: 2724204070482964443
            ChildIds: 16070149034804917042
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.219867185
                  B: 0.830000043
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  G: 0.738741636
                  B: 0.97
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.922573864
              }
              Overrides {
                Name: "bp:Distance"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: -0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -15.4791641
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: -0.051179
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 4
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 0.5
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6781704678509727130
            Name: "MCG: Fantasy - Outer Rings"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  R: 0.85
                  B: 0.810595632
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 1
                  G: 0.230000019
                  B: 0.2605955
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.922573864
              }
              Overrides {
                Name: "bp:Distance"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: -0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -15.4791641
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 2
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 0.5
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15760319312076295598
            Name: "MCG: Sci-Fi - Inner Glyphs"
            Transform {
              Location {
                Z: -5.53467703
              }
              Rotation {
              }
              Scale {
                X: 0.622540236
                Y: 0.622540236
                Z: 0.622540236
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:0"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.220397308
                  B: 0.52
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 0.00999999
                  G: 0.763973415
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 27.0298214
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: true
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 6
              }
              Overrides {
                Name: "bp:Width"
                Float: 0.386578768
              }
              Overrides {
                Name: "bp:Height"
                Float: 0.337731749
              }
              Overrides {
                Name: "bp:Scale"
                Float: 1
              }
              Overrides {
                Name: "bp:Distance"
                Float: 73.1432266
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: 0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 1
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: 32.7697372
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 7
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 0.45885244
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 6.56363916
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 15696524381397938084
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 1208638183503608178
            Name: "MCG: Fantasy - Overlapping Rings"
            Transform {
              Location {
                Z: -5.5346756
              }
              Rotation {
              }
              Scale {
                X: 0.311270118
                Y: 0.311270118
                Z: 0.311270118
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.220397308
                  B: 0.52
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 0.00999999
                  G: 0.763973415
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 27.9270115
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 6
              }
              Overrides {
                Name: "bp:Width"
                Float: 1.31467223
              }
              Overrides {
                Name: "bp:Height"
                Float: 1.07043719
              }
              Overrides {
                Name: "bp:Scale"
                Float: 1
              }
              Overrides {
                Name: "bp:Distance"
                Float: 120
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: 0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 1
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: 14.2233124
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.462839961
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 0.605496347
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: -8.717
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12743525995237789633
            Name: "MCG: Fantasy - Outer Ring Decorative"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.1828264
                Y: 1.1828264
                Z: 1.1828264
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  R: 0.85
                  B: 0.810595632
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 1
                  G: 0.230000019
                  B: 0.2605955
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 0.0768213421
                  B: 0.580000043
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 9.18570423
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 12
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.922573864
              }
              Overrides {
                Name: "bp:Distance"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: -0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -10.893528
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: -0.06006
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 9
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 8
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: true
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: -0.122170269
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 0.341220826
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:3"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 2080356134295508534
            Name: "MCG: Fantasy - Outer Small Circles Inner"
            Transform {
              Location {
              }
              Rotation {
                Yaw: -89.9999695
              }
              Scale {
                X: 0.226561874
                Y: 0.226561874
                Z: 0.226561874
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.231523171
                  B: 0.76
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 0.00999999
                  G: 0.822980106
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 4
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Distance"
                Float: 302.748169
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: -0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -26.1871567
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0.105117917
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 4
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 1
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 10
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.913076878
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 17682598410617598439
            Name: "MCG: Fantasy - Outer Small Circles Outer Rings"
            Transform {
              Location {
              }
              Rotation {
                Yaw: -89.9999771
              }
              Scale {
                X: 0.226561874
                Y: 0.226561874
                Z: 0.226561874
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  R: 0.85
                  B: 0.810595632
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 1
                  G: 0.230000019
                  B: 0.2605955
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 4
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.922573864
              }
              Overrides {
                Name: "bp:Distance"
                Float: 302.78
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: -0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -26.1871567
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 2
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 2
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 10
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15832014770208410961
            Name: "MCG:Fantasy - Outer Small Circle Glyph"
            Transform {
              Location {
              }
              Rotation {
                Yaw: -89.9999771
              }
              Scale {
                X: 0.45923692
                Y: 0.45923692
                Z: 0.45923692
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:0"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.097615622
                  B: 0.669999957
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  G: 0.624768257
                  B: 0.89
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 36.4004745
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 4
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.913076878
              }
              Overrides {
                Name: "bp:Distance"
                Float: 152.739609
              }
              Overrides {
                Name: "bp:Element Rotation"
                Float: -107.30751
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: -0
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -15.4791641
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 3
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 0.5
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 10
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: -10
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 10
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 10
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6966315894827924428
            Name: "MCG: Fantasy - Singular Element Outer Ring Inner"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 0.350000083
                Y: 0.350000083
                Z: 0.350000083
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.231523171
                  B: 0.76
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 0.00999999
                  G: 0.822979867
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.922573864
              }
              Overrides {
                Name: "bp:Distance"
                Float: 134
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -15.4791641
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0.296518564
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 4
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 1
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 10
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7071599951411310564
            Name: "MCG: Fantasy - Singular Element Outer Ring"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 0.350000083
                Y: 0.350000083
                Z: 0.350000083
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  R: 0.85
                  B: 0.810595632
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 1
                  G: 0.230000019
                  B: 0.2605955
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.570502758
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.757915854
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Scale"
                Float: 0.922573864
              }
              Overrides {
                Name: "bp:Distance"
                Float: 134
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: -15.4791641
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 2
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Shape Thickness"
                Float: 1
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 10
              }
              Overrides {
                Name: "bp:Keystone"
                Float: 1
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:newenumerator2"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 18.6479492
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 3226689714587119533
            Name: "MCG: Fantasy - Singular Element Wings"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 0.350000083
                Y: 0.350000083
                Z: 0.350000083
              }
            }
            ParentId: 4277809310272809976
            UnregisteredParameters {
              Overrides {
                Name: "bp:Information"
                String: "See tool-tip for information. "
              }
              Overrides {
                Name: "bp:Element Type"
                Enum {
                  Value: "mc:emcshapes:3"
                }
              }
              Overrides {
                Name: "bp:Top Color"
                Color {
                  G: 0.231522992
                  B: 0.76
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Middle Color"
                Color {
                  R: 0.00999999
                  G: 0.822979867
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Bottom Color"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color Offset Top"
                Float: 0.40956679
              }
              Overrides {
                Name: "bp:Color Offset Middle"
                Float: 0.734075129
              }
              Overrides {
                Name: "bp:Color Offset Bottom"
                Float: 1
              }
              Overrides {
                Name: "bp:Emissive"
                Float: 12.5750904
              }
              Overrides {
                Name: "bp:Border Edge Fade"
                Bool: false
              }
              Overrides {
                Name: "bp:Element A Repetitions U"
                Float: 6
              }
              Overrides {
                Name: "bp:Element A Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Width"
                Float: 1
              }
              Overrides {
                Name: "bp:Height"
                Float: 1
              }
              Overrides {
                Name: "bp:Distance"
                Float: 134
              }
              Overrides {
                Name: "bp:Element Rotation Axis"
                Enum {
                  Value: "mc:emcrotationaxis:2"
                }
              }
              Overrides {
                Name: "bp:Offset Rotation"
                Float: 45
              }
              Overrides {
                Name: "bp:Width +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Height +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Distance +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Element Rotation +/-"
                Float: 0
              }
              Overrides {
                Name: "bp:Random Seed Value"
                Int: 0
              }
              Overrides {
                Name: "bp:Circle Thickness"
                Float: 30.7548676
              }
              Overrides {
                Name: "bp:Fade Start"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Softness"
                Float: 0
              }
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Fade Axis"
                Enum {
                  Value: "mc:emcfadeaxisxy:29"
                }
              }
              Overrides {
                Name: "bp:Fade Point Count"
                Int: 1
              }
              Overrides {
                Name: "bp:Fade Style"
                Enum {
                  Value: "mc:emcfadestyle:30"
                }
              }
              Overrides {
                Name: "bp:Element A Shape"
                Int: 9
              }
              Overrides {
                Name: "bp:Element B Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator1"
                }
              }
              Overrides {
                Name: "bp:Element B Shape"
                Int: 5
              }
              Overrides {
                Name: "bp:Dual Texture"
                Bool: false
              }
              Overrides {
                Name: "bp:Alternate Blend"
                Bool: false
              }
              Overrides {
                Name: "bp:Element Blend"
                Float: 0
              }
              Overrides {
                Name: "bp:Alpha Blending"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip U"
                Bool: false
              }
              Overrides {
                Name: "bp:Flip V"
                Bool: false
              }
              Overrides {
                Name: "bp:Element B Repetitions U"
                Float: 1
              }
              Overrides {
                Name: "bp:Element B Repetitions V"
                Float: 1
              }
              Overrides {
                Name: "bp:Scroll Speed"
                Float: 0
              }
              Overrides {
                Name: "bp:Rotation Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Scroll Speed B"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element A Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset U"
                Float: 0
              }
              Overrides {
                Name: "bp:Element B Offset V"
                Float: 0
              }
              Overrides {
                Name: "bp:Outline"
                Bool: false
              }
              Overrides {
                Name: "bp:Outline Thickness"
                Float: 0.25
              }
              Overrides {
                Name: "bp:Sort Priority"
                Int: -10
              }
              Overrides {
                Name: "bp:Circle Rotation Speed"
                Float: 10
              }
              Overrides {
                Name: "bp:Keystone Top"
                Bool: false
              }
              Overrides {
                Name: "bp:Coloring Method"
                Enum {
                  Value: "mc:emccoloringmethod:3"
                }
              }
              Overrides {
                Name: "bp:Circle Rotation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Element Rotation Speed"
                Float: 18.6479492
              }
              Overrides {
                Name: "bp:Element Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Circle Rotation Update Rate"
                Float: 30
              }
              Overrides {
                Name: "bp:Element Rotation Animation Axis"
                Vector {
                  Z: 1
                }
              }
              Overrides {
                Name: "bp:Use Element Local Orientation"
                Bool: false
              }
              Overrides {
                Name: "bp:Center Element Pivot"
                Bool: false
              }
              Overrides {
                Name: "bp:Reset On Play"
                Bool: true
              }
              Overrides {
                Name: "bp:Reset On Stop"
                Bool: true
              }
              Overrides {
                Name: "bp:Element A Set"
                Enum {
                  Value: "mc:emagiccircleselementtype:newenumerator0"
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4204935042848427516
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 2724204070482964443
            Name: "Level Up VFX"
            Transform {
              Location {
                Z: 1.9454385
              }
              Rotation {
              }
              Scale {
                X: 0.560286224
                Y: 0.560286224
                Z: 0.560286224
              }
            }
            ParentId: 4277809310272809976
            ChildIds: 12872378395353329640
            UnregisteredParameters {
              Overrides {
                Name: "bp:Local Space"
                Bool: false
              }
              Overrides {
                Name: "bp:Ground Element Color"
                Color {
                  R: 0.0871523544
                  B: 0.940000057
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Spiral Color"
                Color {
                  R: 0.265165716
                  B: 0.909999967
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Color"
                Color {
                  R: 0.391324818
                  G: 0.0899999738
                  B: 1
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 161941836213610146
              }
              TeamSettings {
              }
              Vfx {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12872378395353329640
            Name: "Treasure Ray Burst"
            Transform {
              Location {
                Z: 0.770505309
              }
              Rotation {
              }
              Scale {
                X: 2.44444466
                Y: 2.44444466
                Z: 0.111111112
              }
            }
            ParentId: 2724204070482964443
            UnregisteredParameters {
              Overrides {
                Name: "bp:Particle Scale Multiplier"
                Float: 0.933652461
              }
              Overrides {
                Name: "bp:Life"
                Float: 3
              }
              Overrides {
                Name: "bp:Volume Type"
                Enum {
                  Value: "mc:evfxvolumetype:2"
                }
              }
              Overrides {
                Name: "bp:Color"
                Color {
                  R: 1
                  G: 0.0600000024
                  B: 0.975098729
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 17365099617506282650
              }
              TeamSettings {
              }
              Vfx {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16070149034804917042
            Name: "GlowLight"
            Transform {
              Location {
                Z: 1.9454385
              }
              Rotation {
              }
              Scale {
                X: 0.389087826
                Y: 0.389087826
                Z: 0.389087826
              }
            }
            ParentId: 4277809310272809976
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceon"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Light {
              Intensity: 14.7592993
              Color {
                R: 0.871258438
                B: 0.919999957
                A: 1
              }
              CastShadows: true
              VolumetricIntensity: 5
              TeamSettings {
              }
              Light {
                UseTemperature: true
                Temperature: 6500
                LocalLight {
                  AttenuationRadius: 1000
                  PointLight {
                    SourceRadius: 20
                    SoftSourceRadius: 20
                    FallOffExponent: 8
                    UseFallOffExponent: true
                  }
                }
                MaxDrawDistance: 5000
                MaxDistanceFadeRange: 1000
              }
              CastVolumetricShadows: true
              ShadowBias: 0.4
              ShadowSlopeBias: 0.6
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 3805753913905047736
            Name: "Advanced Shotgun"
            Transform {
              Location {
                X: -25
                Y: -1625
                Z: 75
              }
              Rotation {
              }
              Scale {
                X: 0.99999994
                Y: 0.99999994
                Z: 1
              }
            }
            ParentId: 12905933782314020862
            ChildIds: 6753541596281064846
            ChildIds: 8895402818690630718
            ChildIds: 16094181453646335714
            ChildIds: 3004197657535111780
            ChildIds: 4753514666594202156
            UnregisteredParameters {
              Overrides {
                Name: "cs:EnableAim"
                Bool: true
              }
              Overrides {
                Name: "cs:AimBinding"
                String: "Aim"
              }
              Overrides {
                Name: "cs:AimBinding:tooltip"
                String: "Keybinding to hold and activate scope / zoom ability for the weapon. Default is \"ability_secondary\" (right mouse button)."
              }
              Overrides {
                Name: "cs:EnableAim:tooltip"
                String: "Enable aiming for the weapon."
              }
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Equipment {
              SocketName: "right_prop"
              PickupTrigger {
                SubObjectId: 16094181453646335714
              }
              Weapon {
                ProjectileAssetRef {
                  Id: 5936961085923459411
                }
                MuzzleFlashAssetRef {
                  Id: 3934900758394374494
                }
                TrailAssetRef {
                  Id: 9023864673320310867
                }
                ImpactAssetRef {
                  Id: 15728676179772725900
                }
                UseReticle: true
                Muzzle {
                  Location {
                    X: 90
                    Z: 20
                  }
                }
                AnimationSet: "2hand_rifle_stance"
                OutOfAmmoSfxAssetRef {
                  Id: 1683114021203363022
                }
                ReloadSfxAssetRef {
                  Id: 16118667818826686655
                }
                ShootAnimation: "2hand_rifle_shoot"
                ImpactProjectileAssetRef {
                  Id: 841534158063459245
                }
                BeamAssetRef {
                  Id: 841534158063459245
                }
                BurstCount: 1
                BurstDuration: 1
                AttackCooldown: 0.25
                Range: 8000
                ImpactPlayerAssetRef {
                  Id: 307406115803496087
                }
                ReticleType {
                  Value: "mc:ereticletype:none"
                }
                AttackSfxAssetRef {
                  Id: 10464718583626148499
                }
                MaxAmmo: 10
                AmmoType: "rounds"
                MultiShot: 5
                ProjectileSpeed: 10000
                ProjectileLifeSpan: 4
                ProjectileLength: 35
                ProjectileRadius: 1
                ProjectileDrag: -10
                SpreadMin: 0.5
                SpreadMax: 2.6
                SpreadDecreaseSpeed: 7
                SpreadIncreasePerShot: 1.3
                SpreadAperture: 150
                DefaultAbility {
                  SubObjectId: 3004197657535111780
                }
                ReloadAbility {
                  SubObjectId: 4753514666594202156
                }
                WeaponTrajectoryMode {
                  Value: "mc:eweapontrajectorymode:muzzletolooktarget"
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6753541596281064846
            Name: "Server Context"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3805753913905047736
            ChildIds: 2366105633584283332
            ChildIds: 6403234209175888965
            ChildIds: 16827263812380109070
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              Type: Server
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 2366105633584283332
            Name: "EquipmentPickupServer"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 6753541596281064846
            UnregisteredParameters {
              Overrides {
                Name: "cs:Trigger"
                ObjectReference {
                  SubObjectId: 16094181453646335714
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 8459825612529451237
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6403234209175888965
            Name: "WeaponDamageShootServer"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 6753541596281064846
            UnregisteredParameters {
              Overrides {
                Name: "cs:BaseDamage"
                Float: 15
              }
              Overrides {
                Name: "cs:HeadshotDamage"
                Float: 60
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 12210489528647249200
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16827263812380109070
            Name: "WeaponAimServer"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 6753541596281064846
            UnregisteredParameters {
              Overrides {
                Name: "cs:AimWalkSpeedPercentage"
                Float: 0.6
              }
              Overrides {
                Name: "cs:AimActiveStance"
                String: "2hand_rifle_aim_shoulder"
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 2472577150731722024
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8895402818690630718
            Name: "Client Context"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3805753913905047736
            ChildIds: 1284938542573018952
            ChildIds: 13237793275622183702
            ChildIds: 10554124890517973646
            ChildIds: 17471810598818638662
            ChildIds: 14026242647680013816
            ChildIds: 3270038424928441825
            ChildIds: 13452715451795055831
            ChildIds: 10756271664615139186
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 1284938542573018952
            Name: "EquipmentPickupClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            UnregisteredParameters {
              Overrides {
                Name: "cs:PickupSound"
                AssetReference {
                  Id: 6795206535065158887
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 440168262593430639
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13237793275622183702
            Name: "WeaponAimClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            UnregisteredParameters {
              Overrides {
                Name: "cs:AimZoomDistance"
                Float: 100
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 9654009968499969690
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10554124890517973646
            Name: "WeaponSpreadClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            UnregisteredParameters {
              Overrides {
                Name: "cs:SpreadStandPrecision"
                Float: 0.5
              }
              Overrides {
                Name: "cs:SpreadWalkPrecision"
                Float: 0.3
              }
              Overrides {
                Name: "cs:SpreadJumpPrecision"
                Float: 0.2
              }
              Overrides {
                Name: "cs:SpreadCrouchPrecision"
                Float: 0.75
              }
              Overrides {
                Name: "cs:SpreadAimModifierBonus"
                Float: 0.35
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 6652974207271369531
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 17471810598818638662
            Name: "WeaponReticleClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            UnregisteredParameters {
              Overrides {
                Name: "cs:ReticleTemplate"
                AssetReference {
                  Id: 928331646568598234
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 17169051963161242240
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14026242647680013816
            Name: "WeaponAutoReloadClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 8163343952479535019
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 3270038424928441825
            Name: "WeaponRecoilClient"
            Transform {
              Location {
                Y: -121.94487
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            UnregisteredParameters {
              Overrides {
                Name: "cs:RecoilYMax"
                Float: 85
              }
              Overrides {
                Name: "cs:RecoilYMin"
                Float: 60
              }
              Overrides {
                Name: "cs:RecoilXMin"
                Float: -20
              }
              Overrides {
                Name: "cs:RecoilXMax"
                Float: 20
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 4156168509254213209
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13452715451795055831
            Name: "Effects"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            ChildIds: 9285632352366871424
            ChildIds: 2015694436190663472
            ChildIds: 5380018501579710486
            ChildIds: 5297726226925422380
            ChildIds: 16825976425769905144
            ChildIds: 4384197591229542149
            ChildIds: 7571505319566096198
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Folder {
              IsFilePartition: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9285632352366871424
            Name: "WeaponLowAmmoFeedbackClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 16975801195317677333
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 2015694436190663472
            Name: "WeaponReloadCastSoundClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            UnregisteredParameters {
              Overrides {
                Name: "cs:PlayCount"
                Int: 1
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 7766883827523033344
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5380018501579710486
            Name: "WeaponShellEjectionEffectClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            UnregisteredParameters {
              Overrides {
                Name: "cs:ShellEffect"
                ObjectReference {
                  SubObjectId: 5297726226925422380
                }
              }
              Overrides {
                Name: "cs:ShellSound"
                AssetReference {
                  Id: 6865710455785755955
                }
              }
              Overrides {
                Name: "cs:SoundSpawnLocalPosition"
                Vector {
                  X: 25
                  Y: -50
                  Z: -100
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 11968684115206234415
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5297726226925422380
            Name: "Shell Ejection VFX"
            Transform {
              Location {
                X: 20.0001011
                Y: -5.00000048
                Z: 15.9372864
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            UnregisteredParameters {
              Overrides {
                Name: "bp:Size"
                Vector {
                  X: 0.8
                  Y: 0.8
                  Z: 0.8
                }
              }
              Overrides {
                Name: "bp:Burst"
                Bool: true
              }
              Overrides {
                Name: "bp:Spawn Rate"
                Float: 2
              }
              Overrides {
                Name: "bp:Ejection Velocity High"
                Vector {
                  X: -200
                  Y: -300
                  Z: 500
                }
              }
              Overrides {
                Name: "bp:Ejection Velocity Low"
                Vector {
                  X: -50
                  Y: -100
                  Z: 200
                }
              }
              Overrides {
                Name: "bp:Color"
                Color {
                  R: 0.671875
                  G: 0.182401
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 5983425460981411439
              }
              TeamSettings {
              }
              Vfx {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16825976425769905144
            Name: "WeaponAimSoundClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            UnregisteredParameters {
              Overrides {
                Name: "cs:EnableAimSound"
                ObjectReference {
                  SubObjectId: 4384197591229542149
                }
              }
              Overrides {
                Name: "cs:DisableAimSound"
                ObjectReference {
                  SubObjectId: 7571505319566096198
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 11739187330987241719
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4384197591229542149
            Name: "Enable Aim Sound"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 12004933164971763572
              }
              Volume: 0.4
              Falloff: -1
              Radius: -1
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7571505319566096198
            Name: "Disable Aim Sound"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 13452715451795055831
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 17757915654427719657
              }
              Volume: 0.4
              Falloff: -1
              Radius: -1
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10756271664615139186
            Name: "Geo"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1.00000012
                Y: 1.00000012
                Z: 1
              }
            }
            ParentId: 8895402818690630718
            ChildIds: 16689876419295648615
            ChildIds: 9816716718328676256
            ChildIds: 9178698569952810178
            ChildIds: 18435044115284624312
            ChildIds: 12542723213659378566
            ChildIds: 10591632332110177592
            ChildIds: 14072150060203710296
            ChildIds: 12612741761956601695
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16689876419295648615
            Name: "Modern Weapon - Stock 03"
            Transform {
              Location {
                X: 3.5819397
                Z: 15.5412445
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 13078053896687535652
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9816716718328676256
            Name: "Modern Weapon - Grip 02"
            Transform {
              Location {
                X: 2.57466507
                Z: 9.15598869
              }
              Rotation {
                Pitch: -4.96676636
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 9933034030368674416
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9178698569952810178
            Name: "Modern Weapon Accessory - Shell Clip"
            Transform {
              Location {
                X: -19.9617
                Y: 2.71915293
                Z: 15.694191
              }
              Rotation {
                Yaw: 179.999954
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 6157711858907400962
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18435044115284624312
            Name: "Trigger - Rear"
            Transform {
              Location {
                X: 5.53508663
                Y: 1.90734863e-06
                Z: 6.86585045
              }
              Rotation {
                Yaw: -90
                Roll: 20.9725037
              }
              Scale {
                X: 0.015624295
                Y: 0.0206673089
                Z: 0.0437973253
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_BaseMaterial:id"
                AssetReference {
                  Id: 132672053610873933
                }
              }
              Overrides {
                Name: "ma:Shared_BaseMaterial:color"
                Color {
                  R: 0.89
                  G: 0.424370855
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 16965777294932964901
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12542723213659378566
            Name: "Modern Weapon - Barrel 02"
            Transform {
              Location {
                X: 30.5080605
                Z: 18.7378578
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 3240158528397641148
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10591632332110177592
            Name: "Modern Weapon - Barrel Tip 03"
            Transform {
              Location {
                X: 71.671669
                Z: 18.7378578
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 13382674751763746283
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14072150060203710296
            Name: "Modern Weapon - Body 03"
            Transform {
              Location {
                X: 17.8269958
                Z: 18.7378578
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 4916037612258779559
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12612741761956601695
            Name: "Modern Weapon - Foregrip 03"
            Transform {
              Location {
                X: 49.0280418
                Z: 12.8971577
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 10756271664615139186
            UnregisteredParameters {
              Overrides {
                Name: "ma:Shared_Trim:color"
                Color {
                  R: 0.09375
                  G: 0.09375
                  B: 0.09375
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 13891858016092635714
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16094181453646335714
            Name: "Pickup Trigger"
            Transform {
              Location {
                X: 30.0000038
                Z: 0.090065
              }
              Rotation {
              }
              Scale {
                X: 1.25
                Y: 1
                Z: 1
              }
            }
            ParentId: 3805753913905047736
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:alwaysvisible"
            }
            Trigger {
              Interactable: true
              InteractionLabel: "Equip Advanced Shotgun"
              TeamSettings {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              TriggerShape_v2 {
                Value: "mc:etriggershape:box"
              }
              InteractionTemplate {
              }
              BreadcrumbTemplate {
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 3004197657535111780
            Name: "Shoot"
            ParentId: 3805753913905047736
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceoff"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Ability {
              IsEnabled: true
              CastPhaseSettings {
                Duration: 0.03
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:aim"
                }
              }
              ExecutePhaseSettings {
                Duration: 0.1
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
                IsTargetDataUpdated: true
                Facing_V2 {
                  Value: "mc:eabilitysetfacing:aim"
                }
              }
              RecoveryPhaseSettings {
                Duration: 0.01
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
              }
              CooldownPhaseSettings {
                Duration: 0.22
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
              }
              Animation: "2hand_rifle_shoot"
              KeyBinding_v2 {
                Value: "mc:egameaction:invalid"
              }
              KeyBinding_v3: "Shoot"
              Version: 3
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4753514666594202156
            Name: "Reload"
            ParentId: 3805753913905047736
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceoff"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Ability {
              IsEnabled: true
              CastPhaseSettings {
                Duration: 2
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
              }
              ExecutePhaseSettings {
                Duration: 0.1
                CanMove: true
                CanJump: true
                CanRotate: true
                PreventOtherAbilities: true
              }
              RecoveryPhaseSettings {
                CanMove: true
                CanJump: true
                CanRotate: true
              }
              CooldownPhaseSettings {
                CanMove: true
                CanJump: true
                CanRotate: true
              }
              Animation: "2hand_rifle_reload_magazine"
              KeyBinding_v2 {
                Value: "mc:egameaction:invalid"
              }
              KeyBinding_v3: "Reload"
              Version: 3
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4804721138835374654
            Name: "Damageable Crate"
            Transform {
              Location {
                Y: -2025
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 12905933782314020862
            ChildIds: 5260110530923080988
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            DamageableObject {
              DamageSettings {
                MaxHitpoints: 125
                StartingHitpoints: 125
                DestroyOnDeath: true
                DestroyOnDeathClientTemplateId {
                  Id: 15360082173445041578
                }
                DestroyOnDeathNetworkedTemplateId {
                  Id: 841534158063459245
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5260110530923080988
            Name: "Simple Crate 150cm"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4804721138835374654
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            CoreMesh {
              MeshAsset {
                Id: 15049846606931455745
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              StaticMesh {
                Physics {
                  Mass: 100
                  LinearDamping: 0.01
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 215565315193733872
            Name: "Portal VFX"
            Transform {
              Location {
                Y: -4750
                Z: 50
              }
              Rotation {
                Yaw: 89.9999924
              }
              Scale {
                X: 0.75
                Y: 0.75
                Z: 0.75
              }
            }
            ParentId: 12905933782314020862
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 6677237403455816226
              }
              TeamSettings {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14069807948467438145
            Name: "Checkpoint Objects"
            Transform {
              Location {
                Y: -3627.47314
                Z: -20.6184082
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5559652297330802765
            ChildIds: 7145406068038433335
            ChildIds: 16526210295284256508
            ChildIds: 8116993212814322597
            ChildIds: 14373164808155395622
            ChildIds: 9075227807955007527
            ChildIds: 16577137792308328187
            ChildIds: 15100827462443139837
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7145406068038433335
            Name: "Checkpoint 1 Trigger"
            Transform {
              Location {
                Y: 1271.84155
                Z: 75
              }
              Rotation {
              }
              Scale {
                X: 1.5
                Y: 0.5
                Z: 2.5
              }
            }
            ParentId: 14069807948467438145
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceon"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Trigger {
              Interactable: true
              InteractionLabel: "Save Checkpoint"
              TeamSettings {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              TriggerShape_v2 {
                Value: "mc:etriggershape:box"
              }
              InteractionTemplate {
                Id: 841534158063459245
              }
              BreadcrumbTemplate {
                Id: 841534158063459245
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16526210295284256508
            Name: "Checkpoint 2 Trigger"
            Transform {
              Location {
                Y: -1228.15845
                Z: 77.1072845
              }
              Rotation {
              }
              Scale {
                X: 3
                Y: 3
                Z: 1.5
              }
            }
            ParentId: 14069807948467438145
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceon"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Trigger {
              TeamSettings {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              TriggerShape_v2 {
                Value: "mc:etriggershape:box"
              }
              InteractionTemplate {
                Id: 841534158063459245
              }
              BreadcrumbTemplate {
                Id: 841534158063459245
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8116993212814322597
            Name: "Checkpoint 3 Logic"
            Transform {
              Location {
                Y: 3621.84155
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14069807948467438145
            UnregisteredParameters {
              Overrides {
                Name: "cs:Damageable"
                ObjectReference {
                  SubObjectId: 4804721138835374654
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 4100630138294835263
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14373164808155395622
            Name: "Reset Trigger"
            Transform {
              Location {
                Y: -6578.1582
              }
              Rotation {
              }
              Scale {
                X: 6.25
                Y: 1
                Z: 6.50000143
              }
            }
            ParentId: 14069807948467438145
            ChildIds: 2493135741711028681
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceon"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Trigger {
              TeamSettings {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              TriggerShape_v2 {
                Value: "mc:etriggershape:box"
              }
              InteractionTemplate {
                Id: 841534158063459245
              }
              BreadcrumbTemplate {
                Id: 841534158063459245
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 2493135741711028681
            Name: "ForceSave_Example"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14373164808155395622
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 1819507627898824980
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9075227807955007527
            Name: "Checkpoint 1 Position"
            Transform {
              Location {
                Y: 1442.33179
                Z: 100
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14069807948467438145
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 2647314340497419123
              }
              TeamSettings {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16577137792308328187
            Name: "Checkpoint 2 Position"
            Transform {
              Location {
                Y: -1224.10229
                Z: 155.935959
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14069807948467438145
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 2647314340497419123
              }
              TeamSettings {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15100827462443139837
            Name: "Checkpoint 3 Position"
            Transform {
              Location {
                Y: -3883.75464
                Z: 97.782486
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14069807948467438145
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 2647314340497419123
              }
              TeamSettings {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14944514074676809850
            Name: "Checkpoints"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 5559652297330802765
            TemplateInstance {
              ParameterOverrideMap {
                key: 2747162148179311879
                value {
                  Overrides {
                    Name: "Name"
                    String: "Checkpoints"
                  }
                  Overrides {
                    Name: "Position"
                    Vector {
                      Y: -5.6315918
                      Z: -20.6184082
                    }
                  }
                  Overrides {
                    Name: "Rotation"
                    Rotator {
                    }
                  }
                  Overrides {
                    Name: "Scale"
                    Vector {
                      X: 1
                      Y: 1
                      Z: 1
                    }
                  }
                  Overrides {
                    Name: "cs:UsePriority"
                    Bool: true
                  }
                  Overrides {
                    Name: "cs:UsePersistence"
                    Bool: true
                  }
                }
              }
              ParameterOverrideMap {
                key: 8013159038992860190
                value {
                  Overrides {
                    Name: "cs:CheckpointsTable"
                    AssetReference {
                      Id: 3035513669146297320
                    }
                  }
                }
              }
              TemplateAsset {
                Id: 17064066484446909498
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 3035513669146297320
      Name: "CheckpointsTable-Example"
      PlatformAssetType: 31
      VirtualFolderPath: "Checkpoints"
      DataTableAsset {
        Columns {
          Name: "Position"
          Type: 9
        }
        Columns {
          Name: "Trigger"
          Type: 9
        }
        Columns {
          Name: "Event"
          Type: 3
        }
        Columns {
          Name: "OnSpawnEffects"
          Type: 7
        }
        Columns {
          Name: "OnActivateEffects"
          Type: 7
        }
        Rows {
          RawData: "A9CDE12D4B253177"
          RawData: "B715DA43629B7367"
          RawData: ""
          RawData: "C6614193B30326A9"
          RawData: "6808611DB9F38CE6"
        }
        Rows {
          RawData: "32319C4880FF3FAB"
          RawData: "3164AA02AA10C7AC"
          RawData: ""
          RawData: "C6614193B30326A9"
          RawData: "106C8B85A725720D"
        }
        Rows {
          RawData: "05ACA42756A18BAD"
          RawData: "0BADBADBADBADBAD"
          RawData: "Crate Destroyed"
          RawData: "C6614193B30326A9"
          RawData: "0BADBADBADBADBAD"
        }
      }
    }
    Assets {
      Id: 1183474208242758157
      Name: "Checkpoint 2 Activate Effect"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 2312539208269519870
          Objects {
            Id: 2312539208269519870
            Name: "Checkpoint 2 Activate Effect"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 16401389001212456968
            ChildIds: 5660129083386760253
            Lifespan: 3
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16401389001212456968
            Name: "Confetti Radial Burst Volume VFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2312539208269519870
            UnregisteredParameters {
              Overrides {
                Name: "bp:Life"
                Float: 2
              }
              Overrides {
                Name: "bp:Particle Scale Multiplier"
                Float: 10
              }
              Overrides {
                Name: "bp:Density"
                Float: 10
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 16338337003703730953
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5660129083386760253
            Name: "Crowd Kids Cheering 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 2312539208269519870
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            AudioInstance {
              AudioAsset {
                Id: 9300541948132330328
              }
              AutoPlay: true
              Volume: 2
              Falloff: -1
              Radius: -1
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 9300541948132330328
      Name: "Crowd Kids Cheering 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_crowd_kids_cheering_01_Cue_ref"
      }
    }
    Assets {
      Id: 16338337003703730953
      Name: "Confetti Radial Burst Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_confetti_burst_radial_volume"
      }
    }
    Assets {
      Id: 7496348360059882726
      Name: "Checkpoint 1 Activate Effect"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 3317477852245384298
          Objects {
            Id: 3317477852245384298
            Name: "Checkpoint 1 Activate Effect"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 4949546240520363799
            Lifespan: 1
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4949546240520363799
            Name: "Sci-fi Mech Activate Powerup 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3317477852245384298
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            AudioInstance {
              AudioAsset {
                Id: 4334475380300230448
              }
              AutoPlay: true
              Volume: 2
              Falloff: -1
              Radius: -1
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 4334475380300230448
      Name: "Sci-fi Mech Activate Powerup 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_scifi_mech_activate_powerup_01_Cue_ref"
      }
    }
    Assets {
      Id: 14294778794869991081
      Name: "Checkpoint Spawn Effect"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 13542438042719310880
          Objects {
            Id: 13542438042719310880
            Name: "Checkpoint Spawn Effect"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 6080246663403570689
            ChildIds: 16563868589312541066
            Lifespan: 2
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6080246663403570689
            Name: "Beam Up Teleport VFX"
            Transform {
              Location {
                Z: -200
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13542438042719310880
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 10967004223794293878
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16563868589312541066
            Name: "Sci-fi Quick Dark Portal Teleporter Activate 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13542438042719310880
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            AudioInstance {
              AudioAsset {
                Id: 4138619677787341064
              }
              AutoPlay: true
              Volume: 2
              Falloff: -1
              Radius: -1
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 4138619677787341064
      Name: "Sci-fi Quick Dark Portal Teleporter Activate 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_scifi_quick_dark_portal_teleporter_activate_01_Cue_ref"
      }
    }
    Assets {
      Id: 10967004223794293878
      Name: "Beam Up Teleport VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Teleporter"
      }
    }
    Assets {
      Id: 2647314340497419123
      Name: "Dummy Object"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_dummy_pivot"
      }
    }
    Assets {
      Id: 1819507627898824980
      Name: "ForceSave_Example"
      PlatformAssetType: 3
      TextAsset {
        Text: "--This script is an example on how to force the respawn index\r\n--back to 0 even with UsePriority property enabled.\r\n\r\nlocal TRIGGER = script.parent\r\n\r\nfunction OnBeginOverlap(trigger, other)\r\n\tif other:IsA(\"Player\") then\r\n\t\tEvents.Broadcast(\"ForceSave\", other, 0)\r\n\t\tother:Despawn()\r\n\t\tother:Spawn()\r\n\tend\r\nend\r\n\r\nTRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 4100630138294835263
      Name: "Checkpoint 3 Logic"
      PlatformAssetType: 3
      TextAsset {
        Text: "local DAMAGEABLE = script:GetCustomProperty(\"Damageable\"):WaitForObject()\r\n\r\nlocal function OnDeadEvent(obj, damage)\r\n\tif damage.sourcePlayer then\r\n\t\tEvents.Broadcast(\"Crate Destroyed\", damage.sourcePlayer)\r\n\tend\r\nend\r\n\r\nDAMAGEABLE.diedEvent:Connect(OnDeadEvent)"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Checkpoints"
    }
    Assets {
      Id: 6677237403455816226
      Name: "Portal VFX"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_portal"
      }
    }
    Assets {
      Id: 15049846606931455745
      Name: "Simple Crate 150cm"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crate_simple_150cm_001"
      }
    }
    Assets {
      Id: 15360082173445041578
      Name: "Crate Damaged Effect"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 9927879069397735132
          Objects {
            Id: 9927879069397735132
            Name: "Crate Damaged Effect"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 12135548612817086338
            ChildIds: 1294213185541065051
            ChildIds: 15550810701710517661
            ChildIds: 5804294120531106720
            ChildIds: 10467680471746094919
            ChildIds: 17460536384934889419
            ChildIds: 10506504493132930224
            Lifespan: 5
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12135548612817086338
            Name: "Big Hammer Huge Ground Impact 01 SFX"
            Transform {
              Location {
                Z: 30
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9927879069397735132
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            AudioInstance {
              AudioAsset {
                Id: 16546454087798714030
              }
              AutoPlay: true
              Volume: 1
              Falloff: -1
              Radius: -1
              EnableOcclusion: true
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 1294213185541065051
            Name: "Nature Rocks Debris Falling 01 SFX"
            Transform {
              Location {
                Z: 30
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9927879069397735132
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            AudioInstance {
              AudioAsset {
                Id: 11668795086972497778
              }
              AutoPlay: true
              Pitch: -500
              Volume: 1
              Falloff: -1
              Radius: -1
              EnableOcclusion: true
              FadeOutTime: 0.5
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
              StopTime: 1
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15550810701710517661
            Name: "Large Wooden Structure Break Destroy Impact 01 SFX"
            Transform {
              Location {
                Z: 30
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 9927879069397735132
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            AudioInstance {
              AudioAsset {
                Id: 15796414191768169806
              }
              AutoPlay: true
              Volume: 1
              Falloff: -1
              Radius: -1
              EnableOcclusion: true
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5804294120531106720
            Name: "Smoke Puff VFX"
            Transform {
              Location {
                Z: 50
              }
              Rotation {
              }
              Scale {
                X: 1.25
                Y: 1.25
                Z: 1.25
              }
            }
            ParentId: 9927879069397735132
            UnregisteredParameters {
              Overrides {
                Name: "bp:Color"
                Color {
                  R: 2
                  G: 1.49296474
                  B: 1.06800008
                  A: 0.822
                }
              }
              Overrides {
                Name: "bp:Sort Priority Adjustment"
                Int: 1
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 17772147750865925804
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10467680471746094919
            Name: "Wood Impact VFX"
            Transform {
              Location {
                Z: 100
              }
              Rotation {
              }
              Scale {
                X: 5
                Y: 5
                Z: 5
              }
            }
            ParentId: 9927879069397735132
            UnregisteredParameters {
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Local Space"
                Bool: false
              }
              Overrides {
                Name: "bp:Enable Impact Lines"
                Bool: false
              }
              Overrides {
                Name: "bp:Enable Dust"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 6298331142273284064
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 17460536384934889419
            Name: "Wood Impact VFX"
            Transform {
              Location {
                X: 50
                Y: 25
                Z: 75
              }
              Rotation {
              }
              Scale {
                X: 5
                Y: 5
                Z: 5
              }
            }
            ParentId: 9927879069397735132
            UnregisteredParameters {
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Local Space"
                Bool: false
              }
              Overrides {
                Name: "bp:Enable Impact Lines"
                Bool: false
              }
              Overrides {
                Name: "bp:Enable Dust"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 6298331142273284064
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10506504493132930224
            Name: "Wood Impact VFX"
            Transform {
              Location {
                X: -50
                Y: -25
                Z: 75
              }
              Rotation {
              }
              Scale {
                X: 5
                Y: 5
                Z: 5
              }
            }
            ParentId: 9927879069397735132
            UnregisteredParameters {
              Overrides {
                Name: "bp:Initial Start Delay"
                Float: 0
              }
              Overrides {
                Name: "bp:Local Space"
                Bool: false
              }
              Overrides {
                Name: "bp:Enable Impact Lines"
                Bool: false
              }
              Overrides {
                Name: "bp:Enable Dust"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Blueprint {
              BlueprintAsset {
                Id: 6298331142273284064
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:medium"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
    }
    Assets {
      Id: 6298331142273284064
      Name: "Wood Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_gun_impact_wood_sm"
      }
    }
    Assets {
      Id: 17772147750865925804
      Name: "Smoke Puff VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_smoke_puff"
      }
    }
    Assets {
      Id: 15796414191768169806
      Name: "Large Wooden Structure Break Destroy Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_large_wooden_structure_break_impact_01a_Cue_ref"
      }
    }
    Assets {
      Id: 11668795086972497778
      Name: "Nature Rocks Debris Falling 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_nature_rocks_debris_falling_01_Cue_ref"
      }
    }
    Assets {
      Id: 16546454087798714030
      Name: "Big Hammer Huge Ground Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_big_hammer_explode_ground_impact_01a_Cue_ref"
      }
    }
    Assets {
      Id: 13891858016092635714
      Name: "Modern Weapon - Foregrip 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_foregrip_003"
      }
    }
    Assets {
      Id: 4916037612258779559
      Name: "Modern Weapon - Body 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_body_003"
      }
    }
    Assets {
      Id: 13382674751763746283
      Name: "Modern Weapon - Barrel Tip 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_barreltip_003"
      }
    }
    Assets {
      Id: 3240158528397641148
      Name: "Modern Weapon - Barrel 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_barrel_002"
      }
    }
    Assets {
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    Assets {
      Id: 16965777294932964901
      Name: "Cube - Chamfered Large Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_002"
      }
    }
    Assets {
      Id: 6157711858907400962
      Name: "Modern Weapon Accessory - Shell Clip"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_acc_shellclip_001"
      }
    }
    Assets {
      Id: 9933034030368674416
      Name: "Modern Weapon - Grip 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_grip_002"
      }
    }
    Assets {
      Id: 13078053896687535652
      Name: "Modern Weapon - Stock 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_stock_003"
      }
    }
    Assets {
      Id: 17757915654427719657
      Name: "Gear Equipment Cloth Military Grab Movement 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_gear_equipment_cloth_military_grab_movement_02a_Cue_ref"
      }
    }
    Assets {
      Id: 12004933164971763572
      Name: "Weapon Handle Grab 04 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_weapon_handle_04_Cue_ref"
      }
    }
    Assets {
      Id: 11739187330987241719
      Name: "WeaponAimSoundClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\n\r\nlocal ENABLE_AIM_SOUND = script:GetCustomProperty(\"EnableAimSound\"):WaitForObject()\r\nlocal DISABLE_AIM_SOUND = script:GetCustomProperty(\"DisableAimSound\"):WaitForObject()\r\n\r\n-- Constant variables\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\n\r\nfunction OnWeaponAim(player, isAiming)\r\n    if not Object.IsValid(ENABLE_AIM_SOUND) then return end\r\n    if not Object.IsValid(DISABLE_AIM_SOUND) then return end\r\n    if WEAPON.owner ~= player or player ~= LOCAL_PLAYER then return end\r\n\r\n    if isAiming then\r\n        ENABLE_AIM_SOUND:Play()\r\n    else\r\n        DISABLE_AIM_SOUND:Play()\r\n    end\r\n\r\nend\r\n\r\nEvents.Connect(\"WeaponAiming\", OnWeaponAim)"
        CustomParameters {
          Overrides {
            Name: "cs:EnableAimSound"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:DisableAimSound"
            ObjectReference {
            }
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 5983425460981411439
      Name: "Shell Ejection VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_shell_ejection"
      }
    }
    Assets {
      Id: 6865710455785755955
      Name: "Shotgun Bullet Shell Drop Sound"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 3081722450866107420
          Objects {
            Id: 3081722450866107420
            Name: "Shotgun Bullet Shell Drop Sound"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            UnregisteredParameters {
              Overrides {
                Name: "bp:Type"
                Enum {
                  Value: "mc:esfx_bullet_shells_casings_drop_01:1"
                }
              }
            }
            Lifespan: 0.8
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 1566294819570033529
              }
              TeamSettings {
              }
              AudioBP {
                AutoPlay: true
                Volume: 0.3
                Falloff: 3600
                Radius: 400
                IsSpatializationEnabled: true
                IsAttenuationEnabled: true
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 1566294819570033529
      Name: "Bullet Shell Casing Drop Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_bullet_shell_casings_drop_ref"
      }
    }
    Assets {
      Id: 11968684115206234415
      Name: "WeaponShellEjectionEffectClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2020 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    Plays shell vfx and spawns shell drop sfx on weapon\'s shooting phase.\r\n]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\nlocal ATTACK_ABILITY = WEAPON:GetAbilities()[1]\r\n\r\n-- Grabs ability again from weapon in case the client hasn\'t loaded the object yet\r\nwhile not Object.IsValid(ATTACK_ABILITY) do\r\n    Task.Wait()\r\n    ATTACK_ABILITY = WEAPON:GetAbilities()[1]\r\nend\r\n\r\n-- Constant variables\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\nlocal DEFAULT_LIFESPAN = 1\r\n\r\n-- User exposed variables\r\nlocal SHELL_VFX = script:GetCustomProperty(\"ShellEffect\"):WaitForObject()\r\nlocal SHELL_SFX_ASSET = script:GetCustomProperty(\"ShellSound\")\r\nlocal SOUND_DELAY = script:GetCustomProperty(\"SoundDelay\")\r\nlocal SPAWN_POSITION = script:GetCustomProperty(\"SoundSpawnLocalPosition\")\r\n\r\nfunction SpawnShellAudio()\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if SHELL_SFX_ASSET then\r\n        local instance = World.SpawnAsset(SHELL_SFX_ASSET, {position = WEAPON:GetWorldPosition() + SPAWN_POSITION})\r\n        if instance.lifeSpan == 0 then\r\n            instance.lifeSpan = DEFAULT_LIFESPAN\r\n        end\r\n    end\r\nend\r\n\r\n-- nil OnExecute(Ability)\r\n-- Plays shell effects\r\nfunction OnExecute(ability)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(ability) then return end\r\n    if not ability.owner == LOCAL_PLAYER then return end\r\n\r\n    SHELL_VFX:Play()\r\n\r\n    Task.Wait(SOUND_DELAY)\r\n\r\n    SpawnShellAudio()\r\nend\r\n\r\n-- Initialize\r\nATTACK_ABILITY.executeEvent:Connect(OnExecute)"
        CustomParameters {
          Overrides {
            Name: "cs:ShellEffect"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:ShellSound"
            AssetReference {
              Id: 15197985150450883762
            }
          }
          Overrides {
            Name: "cs:SoundDelay"
            Float: 0.7
          }
          Overrides {
            Name: "cs:SoundSpawnLocalPosition"
            Vector {
              X: 25
              Y: 50
              Z: -100
            }
          }
          Overrides {
            Name: "cs:ShellEffect:tooltip"
            String: "Vfx object plays on weapon shoot ability execution phase."
          }
          Overrides {
            Name: "cs:SoundDelay:tooltip"
            String: "Delay time before the audio plays."
          }
          Overrides {
            Name: "cs:ShellSound:tooltip"
            String: "Audio asset that spawns at the specified position after the delay."
          }
          Overrides {
            Name: "cs:SoundSpawnLocalPosition:tooltip"
            String: "Local position for shell sound spawning in the weapon."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 15197985150450883762
      Name: "Generic Bullet Shell Drop Sound"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 3081722450866107420
          Objects {
            Id: 3081722450866107420
            Name: "Generic Bullet Shell Drop Sound"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            UnregisteredParameters {
              Overrides {
                Name: "bp:Type"
                Enum {
                  Value: "mc:esfx_bullet_shells_casings_drop_01:0"
                }
              }
            }
            Lifespan: 0.8
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 1566294819570033529
              }
              TeamSettings {
              }
              AudioBP {
                AutoPlay: true
                Volume: 0.3
                Falloff: 3600
                Radius: 400
                EnableOcclusion: true
                IsSpatializationEnabled: true
                IsAttenuationEnabled: true
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 7766883827523033344
      Name: "WeaponReloadCastSoundClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2020 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script spawns reload sound during the reload ability\'s cast phase.\r\n    This is done in case the reloading time is long for this script\'s weapon.\r\n]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\nlocal RELOAD_ABILITY = WEAPON:GetAbilities()[2]\r\n\r\n-- User exposed properties\r\nlocal PLAY_COUNT = script:GetCustomProperty(\"PlayCount\")\r\n\r\n-- Grabs ability again from weapon in case the client hasn\'t loaded the object yet\r\nwhile not Object.IsValid(RELOAD_ABILITY) do\r\n    Task.Wait()\r\n    RELOAD_ABILITY = WEAPON:GetAbilities()[2]\r\nend\r\n\r\n-- Constant variables\r\nlocal DEFAULT_LIFESPAN = 1\r\nlocal WAIT_TIME = RELOAD_ABILITY.castPhaseSettings.duration / PLAY_COUNT\r\n\r\n-- Manually spawn the reloading audio\r\nfunction SpawnReloadingAudio()\r\n    if WEAPON.reloadSoundId ~= nil then\r\n        local instance = World.SpawnAsset(WEAPON.reloadSoundId, {position = WEAPON:GetWorldPosition()})\r\n        if instance.lifeSpan == 0 then\r\n            instance.lifeSpan = DEFAULT_LIFESPAN\r\n        end\r\n    end\r\nend\r\n\r\n-- nil OnCast()\r\n-- Spawn reload sound during cast phase\r\nfunction OnCast()\r\n    if not Object.IsValid(WEAPON) then return end\r\n\r\n    for i = 1, PLAY_COUNT do\r\n        SpawnReloadingAudio()\r\n\r\n        -- The duration between reloading sound is the cast phase duration divided by play count number\r\n        Task.Wait(WAIT_TIME)\r\n    end\r\nend\r\n\r\n-- Initialize\r\nRELOAD_ABILITY.castEvent:Connect(OnCast)"
        CustomParameters {
          Overrides {
            Name: "cs:PlayCount"
            Int: 1
          }
          Overrides {
            Name: "cs:PlayCount:tooltip"
            String: "Number of times to spawn reload sound from the weapon during cast phase. If zero, no reload audio will be spawned."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 16975801195317677333
      Name: "WeaponLowAmmoFeedbackClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script plays audio to the weapon owner when the weapon reaches set percentage amount of ammo.\r\n    The audio plays only to the weapon owner client.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\nlocal ATTACK_ABILITY = WEAPON:GetAbilities()[1]\r\n\r\n-- Grabs ability again from weapon in case the client hasn\'t loaded the object yet\r\nwhile not Object.IsValid(ATTACK_ABILITY) do\r\n    Task.Wait()\r\n    ATTACK_ABILITY = WEAPON:GetAbilities()[1]\r\nend\r\n\r\n-- Constant variables\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\nlocal DEFAULT_LIFESPAN = 1\r\n\r\n-- Exposed variables\r\nlocal LOW_AMMO_SOUND = script:GetCustomProperty(\"LowAmmoSound\")\r\nlocal LOW_AMMO_PERCENTAGE = script:GetCustomProperty(\"LowAmmoPercentage\")\r\n\r\nfunction OnShoot(ability)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(ability) then return end\r\n    if WEAPON.owner ~= LOCAL_PLAYER then return end\r\n\r\n    if WEAPON.currentAmmo / WEAPON.maxAmmo <= LOW_AMMO_PERCENTAGE then\r\n        if LOW_AMMO_SOUND then\r\n            local instance = World.SpawnAsset(LOW_AMMO_SOUND, {position = WEAPON:GetWorldPosition()})\r\n            if instance.lifeSpan == 0 then\r\n                instance.lifeSpan = DEFAULT_LIFESPAN\r\n            end\r\n        end\r\n    end\r\nend\r\n\r\n-- Initialize\r\nATTACK_ABILITY.executeEvent:Connect(OnShoot)"
        CustomParameters {
          Overrides {
            Name: "cs:LowAmmoSound"
            AssetReference {
              Id: 16064653477604779480
            }
          }
          Overrides {
            Name: "cs:LowAmmoPercentage"
            Float: 0.2
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 16064653477604779480
      Name: "Generic Low Ammo Sound"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 16196546363947031314
          Objects {
            Id: 16196546363947031314
            Name: "Generic Low Ammo Sound"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 4574798814266286760
            UnregisteredParameters {
            }
            Lifespan: 2
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4574798814266286760
            Name: "Low Ammo Sound"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 16196546363947031314
            UnregisteredParameters {
              Overrides {
                Name: "bp:Type"
                Enum {
                  Value: "mc:esfx_gunshot_assaultrifle_ak:8"
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 6491078578190431103
              }
              AudioBP {
                AutoPlay: true
                Pitch: 100
                Volume: 0.8
                Falloff: 3600
                Radius: 400
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 6491078578190431103
      Name: "Gunshot Assault Rifle AK Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_gunshot_assaultrifle_ak_ref"
      }
    }
    Assets {
      Id: 4156168509254213209
      Name: "WeaponRecoilClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2020 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script applies random recoil for weapons.\r\n    It moves player\'s local camera during shoot\'s ability execution phase.\r\n    Recoil takes into consideration the player\'s crouch and aim movements.\r\n    There is an option for recoil to recover back to the point of origin.\r\n]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\nlocal ATTACK_ABILITY = WEAPON:GetAbilities()[1]\r\n\r\n-- Grabs ability again from weapon in case the client hasn\'t loaded the object yet\r\nwhile not Object.IsValid(ATTACK_ABILITY) do\r\n    Task.Wait()\r\n    ATTACK_ABILITY = WEAPON:GetAbilities()[1]\r\nend\r\n\r\n-- Exposed variables\r\nlocal ENABLE_RECOIL = script:GetCustomProperty(\"EnableRecoil\")\r\nlocal RECOIL_Y_MIN = script:GetCustomProperty(\"RecoilYMin\")\r\nlocal RECOIL_Y_MAX = script:GetCustomProperty(\"RecoilYMax\")\r\nlocal RECOIL_X_MIN = script:GetCustomProperty(\"RecoilXMin\")\r\nlocal RECOIL_X_MAX = script:GetCustomProperty(\"RecoilXMax\")\r\n\r\nlocal AIM_Y_REDUCTION = script:GetCustomProperty(\"AimYReduction\")\r\nlocal AIM_X_REDUCTION = script:GetCustomProperty(\"AimXReduction\")\r\nlocal CROUCH_Y_REDUCTION = script:GetCustomProperty(\"CrouchYReduction\")\r\nlocal CROUCH_X_REDUCTION = script:GetCustomProperty(\"CrouchXReduction\")\r\n\r\nlocal ENABLE_RECOVERY = script:GetCustomProperty(\"EnableRecovery\")\r\nlocal RECOVERY_DELAY = script:GetCustomProperty(\"RecoveryDelay\")\r\nlocal RECOVERY_STEPS = script:GetCustomProperty(\"RecoverySteps\")\r\n\r\n-- Constant variable\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\n\r\n-- Internal variables\r\nlocal isRecovering = false\r\nlocal isAiming = false\r\nlocal accumulatedRecoil = Rotation.New(0, 0, 0)\r\nlocal lastShotTime = time()\r\nlocal waitDuration = WEAPON.shotsPerSecond / 10\r\n\r\n-- Check variables\r\nif RECOIL_X_MAX < RECOIL_X_MIN then\r\n    error(\"RecoilXMin should be lower than RecoilXMax.\")\r\nend\r\nif RECOIL_Y_MAX < RECOIL_Y_MIN then\r\n    error(\"RecoilYMin should be lower than RecoilYMax.\")\r\nend\r\nif AIM_Y_REDUCTION < 0 or AIM_Y_REDUCTION > 1 then\r\n    error(\"AimYReduction should be within range from 0 to 1.\")\r\nend\r\nif AIM_X_REDUCTION < 0 or AIM_X_REDUCTION > 1 then\r\n    error(\"AimXReduction should be within range from 0 to 1.\")\r\nend\r\nif CROUCH_Y_REDUCTION < 0 or CROUCH_Y_REDUCTION > 1 then\r\n    error(\"CrouchYReduction should be within range from 0 to 1.\")\r\nend\r\nif CROUCH_X_REDUCTION < 0 or CROUCH_X_REDUCTION > 1 then\r\n    error(\"CrouchXReduction should be within range from 0 to 1.\")\r\nend\r\nif RECOVERY_STEPS <= 0 then\r\n    warn(\"RecoverySteps should be positive. Setting RecoverySteps to 10.\")\r\n    RECOVERY_STEPS = 10\r\nend\r\n\r\nif RECOVERY_DELAY > 0 then\r\n    waitDuration = RECOVERY_DELAY\r\nelseif WEAPON.isHitscan then\r\n    waitDuration = .5\r\nend\r\n\r\n-- nil RecoverRecoil()\r\n-- Recover player\'s look back from recoil to the starting point from the first shot\r\nfunction RecoverFromRecoil()\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(LOCAL_PLAYER) then return end\r\n    if WEAPON.owner ~= LOCAL_PLAYER then return end\r\n\r\n    -- Wait before doing recovery\r\n    Task.Wait(waitDuration)\r\n\r\n    if not isRecovering and time() - lastShotTime >= waitDuration then\r\n        local recoilRecoveryFraction = Rotation.New(0, accumulatedRecoil.y/RECOVERY_STEPS, accumulatedRecoil.z/RECOVERY_STEPS)\r\n        isRecovering = true\r\n\r\n        for i = 1, RECOVERY_STEPS do\r\n            -- Interrupt recovery if another shot was shot\r\n            if not isRecovering then return end\r\n\r\n            LOCAL_PLAYER:SetLookWorldRotation(LOCAL_PLAYER:GetLookWorldRotation() - recoilRecoveryFraction)\r\n            Task.Wait(.01)\r\n        end\r\n    end\r\nend\r\n\r\n-- <float, float> CheckRecoilReduction(float, float)\r\n-- Apply recoil reduction when player aims or crouches. Returns reduced vertical and horizontal rotations.\r\nfunction CheckRecoilReduction(verticalRotation, horizontalRotation)\r\n    local totalYReduction = 0\r\n    local totalXReduction = 0\r\n\r\n    if isAiming then\r\n        totalYReduction = totalYReduction + AIM_Y_REDUCTION\r\n        totalXReduction = totalXReduction + AIM_X_REDUCTION\r\n    end\r\n    if LOCAL_PLAYER.isCrouching then\r\n        totalYReduction = totalYReduction + CROUCH_Y_REDUCTION\r\n        totalXReduction = totalXReduction + CROUCH_X_REDUCTION\r\n    end\r\n    return  verticalRotation - verticalRotation * totalYReduction,\r\n            horizontalRotation - horizontalRotation * totalXReduction\r\nend\r\n\r\n-- nil OnExecute(Ability)\r\n-- Moves player\'s look using recoil\'s min and max values\r\nfunction OnExecute(ability)\r\n    if not ENABLE_RECOIL then return end\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(LOCAL_PLAYER) then return end\r\n    if ability.owner ~= LOCAL_PLAYER then return end\r\n\r\n    -- Set random horizontal and vertical recoil\r\n    local vRot = math.random(RECOIL_Y_MIN, RECOIL_Y_MAX)/100\r\n    local hRot = math.random(RECOIL_X_MIN, RECOIL_X_MAX)/100\r\n\r\n    -- Apply recoil reduction if player aims or crouches\r\n    vRot, hRot = CheckRecoilReduction(vRot, hRot)\r\n\r\n    local newRecoil = Rotation.New(0, vRot, hRot)\r\n\r\n    -- Apply recoil to player\'s look rotation\r\n    LOCAL_PLAYER:SetLookWorldRotation(LOCAL_PLAYER:GetLookWorldRotation() + newRecoil)\r\n\r\n    if ENABLE_RECOVERY then\r\n        -- Reset accumulated recoil if the player was recovering from previous shots\r\n        if isRecovering then\r\n            accumulatedRecoil = Rotation.New(0, 0, 0)\r\n        end\r\n\r\n        -- Reset recovery stats\r\n        isRecovering = false\r\n        lastShotTime = time()\r\n\r\n        -- Accumulate recoil for recovery\r\n        accumulatedRecoil = accumulatedRecoil + newRecoil\r\n        RecoverFromRecoil()\r\n    end\r\nend\r\n\r\n-- nil OnWeaponAiming(Player, bool)\r\n-- Updates player\'s aim status\r\nfunction OnWeaponAiming(player, aiming)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(LOCAL_PLAYER) then return end\r\n    if LOCAL_PLAYER ~= player then return end\r\n    if WEAPON.owner ~= LOCAL_PLAYER then return end\r\n\r\n    isAiming = aiming\r\nend\r\n\r\n-- Initialize\r\nATTACK_ABILITY.executeEvent:Connect(OnExecute)\r\nEvents.Connect(\"WeaponAiming\", OnWeaponAiming)"
        CustomParameters {
          Overrides {
            Name: "cs:EnableRecoil"
            Bool: true
          }
          Overrides {
            Name: "cs:RecoilYMin"
            Float: 5
          }
          Overrides {
            Name: "cs:RecoilYMax"
            Float: 10
          }
          Overrides {
            Name: "cs:RecoilXMin"
            Float: -5
          }
          Overrides {
            Name: "cs:RecoilXMax"
            Float: 5
          }
          Overrides {
            Name: "cs:AimYReduction"
            Float: 0.1
          }
          Overrides {
            Name: "cs:AimXReduction"
            Float: 0.05
          }
          Overrides {
            Name: "cs:CrouchYReduction"
            Float: 0.3
          }
          Overrides {
            Name: "cs:CrouchXReduction"
            Float: 0.1
          }
          Overrides {
            Name: "cs:EnableRecovery"
            Bool: true
          }
          Overrides {
            Name: "cs:RecoveryDelay"
            Float: 0.3
          }
          Overrides {
            Name: "cs:RecoverySteps"
            Int: 12
          }
          Overrides {
            Name: "cs:RecoilYMin:tooltip"
            String: "Minimum random vertical recoil per shot. Should be lower than RecoilYMax."
          }
          Overrides {
            Name: "cs:RecoilYMax:tooltip"
            String: "Maximum random vertical recoil per shot. Should be higher than RecoilYMin."
          }
          Overrides {
            Name: "cs:RecoilXMin:tooltip"
            String: "Minimum random horizontal recoil per shot. Should be lower than RecoilXMax."
          }
          Overrides {
            Name: "cs:RecoilXMax:tooltip"
            String: "Maximum random horizontal recoil per shot. Should be higher than RecoilXMin."
          }
          Overrides {
            Name: "cs:EnableRecovery:tooltip"
            String: "If enabled, player\'s look rotation will return back to the aim\'s point of origin."
          }
          Overrides {
            Name: "cs:RecoveryDelay:tooltip"
            String: "Time in seconds before the recoil recovery starts. If 0, the weapon\'s ShotsPerSecond value is used. If the weapon is hitscan, then the default duration is 0.5 seconds. "
          }
          Overrides {
            Name: "cs:RecoverySteps:tooltip"
            String: "Steps for the recovery animation to move from recoil position back to center. The higher, the smoother and slower it recovers."
          }
          Overrides {
            Name: "cs:AimYReduction:tooltip"
            String: "Vertical recoil reduction % when aiming. Range from 0 to 1."
          }
          Overrides {
            Name: "cs:AimXReduction:tooltip"
            String: "Horizontal recoil reduction % when aiming. Range from 0 to 1."
          }
          Overrides {
            Name: "cs:CrouchYReduction:tooltip"
            String: "Vertical recoil reduction % when crouching. Range from 0 to 1."
          }
          Overrides {
            Name: "cs:CrouchXReduction:tooltip"
            String: "Horizontal recoil reduction % when crouching. Range from 0 to 1."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 8163343952479535019
      Name: "WeaponAutoReloadClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script auto reloads the weapon using the reload ability.\r\n    It tracks if the weapon has enough ammo (or infinite ammo) to reload.\r\n    Additionally it plays the reload sound at the beginning of cast phase and\r\n        interrupts the reload ability when the ability is in different state.\r\n ]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\nlocal RELOAD_ABILITY = WEAPON:GetAbilities()[2]\r\n\r\n-- Grabs ability again from weapon in case the client hasn\'t loaded the object yet\r\nwhile not Object.IsValid(RELOAD_ABILITY) do\r\n    Task.Wait()\r\n    RELOAD_ABILITY = WEAPON:GetAbilities()[2]\r\nend\r\n\r\n-- Exposed properties\r\nlocal AUTO_RELOAD = script:GetCustomProperty(\"EnableAutoReload\")\r\n\r\n-- Internal variables --\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\nlocal autoReloaded = false\r\n\r\nfunction Tick(deltaTime)\r\n\r\n    -- If auto reload is not actiavted ignore the script\r\n    if not AUTO_RELOAD then return end\r\n\r\n    -- Makes sure that the weapon owner is the local player\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(RELOAD_ABILITY) then return end\r\n    if WEAPON.owner ~= LOCAL_PLAYER then return end\r\n\r\n    if not WEAPON.isAmmoFinite then\r\n        -- Checks when the weapon has empty ammo to reload\r\n        if WEAPON.currentAmmo == 0\r\n        and not autoReloaded then\r\n            RELOAD_ABILITY:Activate()\r\n            autoReloaded = true\r\n            Task.Wait(RELOAD_ABILITY.castPhaseSettings.duration)\r\n        end\r\n\r\n        -- Interrupts the reloading animation,\r\n        -- If the weapon is in different state and the ammo is not empty\r\n        if WEAPON.currentAmmo > 0\r\n        and RELOAD_ABILITY:GetCurrentPhase() ~= AbilityPhase.READY\r\n        and autoReloaded then\r\n            RELOAD_ABILITY:Interrupt()\r\n            autoReloaded = false\r\n        end\r\n\r\n        -- Reset autoReloaded bool on ready phase\r\n        if RELOAD_ABILITY:GetCurrentPhase() == AbilityPhase.READY\r\n        and autoReloaded then\r\n            autoReloaded = false\r\n        end\r\n    end\r\nend"
        CustomParameters {
          Overrides {
            Name: "cs:EnableAutoReload"
            Bool: true
          }
          Overrides {
            Name: "cs:EnableAutoReload:tooltip"
            String: "If true the weapon the player will auto reload the ammo without player\'s input. Only reloads if the player has the ammo resource."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 928331646568598234
      Name: "Shotgun Reticle"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 4181694021747233646
          Objects {
            Id: 4181694021747233646
            Name: "Shotgun Reticle"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 10170967974443629138
            ChildIds: 13952190061567006470
            UnregisteredParameters {
              Overrides {
                Name: "cs:ExtraRadius"
                Float: 15
              }
              Overrides {
                Name: "cs:StartAngle"
                Float: 0
              }
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Canvas {
                Opacity: 1
                IsHUD: true
                CanvasWorldSize {
                  X: 1024
                  Y: 1024
                }
                TwoSided: true
                TickWhenOffScreen: true
                RedrawTime: 30
                UseSafeZoneAdjustment: true
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:topleft"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:topleft"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10170967974443629138
            Name: "WeaponReticleUIClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4181694021747233646
            UnregisteredParameters {
              Overrides {
                Name: "cs:ComponentRoot"
                ObjectReference {
                  SubObjectId: 4181694021747233646
                }
              }
              Overrides {
                Name: "cs:SegmentsRoot"
                ObjectReference {
                  SubObjectId: 13952190061567006470
                }
              }
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 10139659402558168400
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13952190061567006470
            Name: "Segments"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4181694021747233646
            ChildIds: 18151895878969212300
            ChildIds: 13072832190120421612
            ChildIds: 5374188682250301270
            ChildIds: 10645145731278971391
            ChildIds: 13512877544332456836
            ChildIds: 5622739817177223320
            ChildIds: 1697333672040624059
            ChildIds: 13037339424950677884
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Folder {
              IsFilePartition: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 18151895878969212300
            Name: "Invinsible Segment"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceoff"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13072832190120421612
            Name: "Segment"
            Transform {
              Location {
              }
              Rotation {
                Yaw: -3.41509417e-06
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5374188682250301270
            Name: "Invinsible Segment"
            Transform {
              Location {
              }
              Rotation {
                Yaw: -3.41509417e-06
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceoff"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10645145731278971391
            Name: "Segment"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13512877544332456836
            Name: "Invinsible Segment"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceoff"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 5622739817177223320
            Name: "Segment"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 1697333672040624059
            Name: "Invinsible Segment"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:forceoff"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13037339424950677884
            Name: "Segment"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13952190061567006470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Control {
              Width: 20
              Height: 20
              RenderTransformPivot {
                Anchor {
                  Value: "mc:euianchor:middlecenter"
                }
              }
              Image {
                Brush {
                  Id: 8774739198122657390
                }
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 0.8
                }
              }
              AnchorLayout {
                SelfAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
                TargetAnchor {
                  Anchor {
                    Value: "mc:euianchor:middlecenter"
                  }
                }
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 8774739198122657390
      Name: "Frame Ring 026 Wedge"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "FrameRing_026Wedge"
      }
    }
    Assets {
      Id: 10139659402558168400
      Name: "WeaponReticleUIClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc. \r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal COMPONENT_ROOT = script:GetCustomProperty(\"ComponentRoot\"):WaitForObject()\r\nlocal SEGMENTS_ROOT = script:GetCustomProperty(\"SegmentsRoot\"):WaitForObject()\r\n\r\n-- User exposed properties\r\nlocal START_ANGLE = COMPONENT_ROOT:GetCustomProperty(\"StartAngle\")\r\nlocal EXTRA_RADIUS = COMPONENT_ROOT:GetCustomProperty(\"ExtraRadius\")\r\n\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\nlocal ANGLE = 360 / #SEGMENTS_ROOT:GetChildren()\r\nlocal RAD_ANGLE = math.pi * 2 / #SEGMENTS_ROOT:GetChildren()\r\n\r\nfunction Tick()\r\n    local spread = LOCAL_PLAYER.currentSpread + EXTRA_RADIUS\r\n    local deg = START_ANGLE\r\n    local rad = math.pi / 2\r\n    for _,seg in pairs(SEGMENTS_ROOT:GetChildren()) do\r\n        seg.rotationAngle = deg\r\n        seg.x = math.cos(rad) * spread\r\n        seg.y = math.sin(rad) * spread\r\n        deg = deg + ANGLE\r\n        rad = rad + RAD_ANGLE\r\n    end\r\nend"
        CustomParameters {
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 17169051963161242240
      Name: "WeaponReticleClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc. \r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\n\r\n-- Exposed variables\r\nlocal HIDE_ON_AIM = script:GetCustomProperty(\"HideReticleOnAim\")\r\nlocal RETICLE_TEMPLATE = script:GetCustomProperty(\"ReticleTemplate\")\r\n\r\n-- Constant variables\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\n\r\n-- Internal variables\r\nlocal reticleInstance = nil\r\nlocal isSpawned = false\r\nlocal isAiming = false\r\n\r\nfunction Tick()\r\n\r\n    -- Check if the owner of the weapon is the local player\r\n    if Object.IsValid(WEAPON) and WEAPON.owner == LOCAL_PLAYER then\r\n\r\n        -- Connect with equipped event in case it was not registered\r\n        if not isSpawned then\r\n            -- Spawn reticle only on local player\r\n            SpawnReticle()\r\n            isSpawned = true\r\n        end\r\n\r\n        -- Reticle visibility is based on player\'s health status\r\n        if (Object.IsValid(reticleInstance)) then\r\n            if HIDE_ON_AIM and isAiming then\r\n                reticleInstance.visibility = Visibility.FORCE_OFF\r\n            else\r\n                if LOCAL_PLAYER.isDead then\r\n                    reticleInstance.visibility = Visibility.FORCE_OFF\r\n                else\r\n                    reticleInstance.visibility = Visibility.INHERIT\r\n                end\r\n            end\r\n        end\r\n    end\r\nend\r\n\r\nfunction SpawnReticle()\r\n    if RETICLE_TEMPLATE and reticleInstance == nil then\r\n        reticleInstance = World.SpawnAsset(RETICLE_TEMPLATE)\r\n    end\r\nend\r\n\r\nfunction RemoveReticle(weapon, player)\r\n    if Object.IsValid(reticleInstance) then\r\n        reticleInstance:Destroy()\r\n        reticleInstance = nil\r\n    end\r\n    isSpawned = false\r\nend\r\n\r\nfunction OnWeaponAimChanged(player, aimingStatus)\r\n    if not Object.IsValid(WEAPON) then return end\r\n\r\n    if player == WEAPON.owner then\r\n        isAiming = aimingStatus\r\n    end\r\nend\r\n\r\n-- Initialize\r\nWEAPON.unequippedEvent:Connect(RemoveReticle)\r\nEvents.Connect(\"WeaponAiming\", OnWeaponAimChanged)"
        CustomParameters {
          Overrides {
            Name: "cs:ReticleTemplate"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:HideReticleOnAim"
            Bool: false
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 6652974207271369531
      Name: "WeaponSpreadClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2020 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script changes weapon spread based on player actions.\r\n    Set the spread precision numbers under the weapon\'s custom properties section to modify how the spread behaves.\r\n    Tooltip is available for each spread precision settings.\r\n    Spread precison percentages fluctuate between Spread Min and Spread Max values of the weapon.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\n\r\n-- Exposed variables --\r\nlocal STAND_PRECISION = script:GetCustomProperty(\"SpreadStandPrecision\")\r\nlocal WALK_PRECISION = script:GetCustomProperty(\"SpreadWalkPrecision\")\r\nlocal JUMP_PRECISION = script:GetCustomProperty(\"SpreadJumpPrecision\")\r\nlocal CROUCH_PRECISION = script:GetCustomProperty(\"SpreadCrouchPrecision\")\r\nlocal AIM_PRECISION_BONUS = script:GetCustomProperty(\"SpreadAimModifierBonus\")\r\n\r\n-- Constatnt variables\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\n\r\n-- Internal variables --\r\nlocal player = nil\r\nlocal newSpreadModifyValue = 0\r\nlocal isAiming = false\r\nlocal spreadDelta = nil\r\n\r\nfunction Tick()\r\n\r\n    -- Sets up weapon spread delta value\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if spreadDelta == nil and Object.IsValid(WEAPON.owner) then\r\n        spreadDelta = WEAPON.spreadMax - WEAPON.spreadMin\r\n    end\r\n    -- Sets up weapon owner\r\n    player = WEAPON.owner\r\n\r\n    if not Object.IsValid(player) then return end\r\n\tif player ~= LOCAL_PLAYER then return end  --only run script for the local player\r\n\r\n    -- Note: Below we check for player movement actions and\r\n    --       calculate the total spreadModify percentage.\r\n\r\n    -- Spread when player is jumping\r\n    if (player.isJumping) then\r\n        if (player.isCrouching) then\r\n            -- Account for the situation when player crouches and jumps\r\n            newSpreadModifyValue = CROUCH_PRECISION - JUMP_PRECISION\r\n        else\r\n            newSpreadModifyValue = JUMP_PRECISION\r\n        end\r\n    -- Spread when player is crouching\r\n    elseif (player.isCrouching) then\r\n        -- Account for the situation when player crouches and moves at the same time\r\n        if (player.isAccelerating) then\r\n            newSpreadModifyValue = CROUCH_PRECISION - WALK_PRECISION\r\n        else\r\n            newSpreadModifyValue = CROUCH_PRECISION\r\n        end\r\n    -- Spread when player is moving\r\n    elseif (player.isAccelerating) then\r\n        newSpreadModifyValue = WALK_PRECISION\r\n    else\r\n        newSpreadModifyValue = STAND_PRECISION\r\n    end\r\n\r\n    -- Adds aim percentage bonus to the total spreadModifyValue\r\n    if isAiming then\r\n        newSpreadModifyValue = newSpreadModifyValue + AIM_PRECISION_BONUS\r\n    end\r\n    -- Adjust the player spread modify gradually over time\r\n    newSpreadModifyValue = spreadDelta * (1 - newSpreadModifyValue)\r\n    player.spreadModifier = GetSmoothValue(player.spreadModifier, newSpreadModifyValue)\r\nend\r\n\r\nfunction GetSmoothValue(from, number)\r\n    return CoreMath.Lerp(from, number, WEAPON.spreadDecreaseSpeed/100)\r\nend\r\n\r\nfunction OnWeaponAimChanged(_, aimingStatus)\r\n    if not Object.IsValid(WEAPON) then return end\r\n\r\n    -- Caches the local player aiming status\r\n    if player == WEAPON.owner then\r\n        isAiming = aimingStatus\r\n    end\r\nend\r\n\r\nfunction OnUnequip(_, weaponOwner)\r\n    if weaponOwner ~= LOCAL_PLAYER then return end\r\n    weaponOwner.spreadModifier = 0\r\nend\r\n\r\n-- Initialize\r\nWEAPON.unequippedEvent:Connect(OnUnequip)\r\nEvents.Connect(\"WeaponAiming\", OnWeaponAimChanged)"
        CustomParameters {
          Overrides {
            Name: "cs:SpreadStandPrecision"
            Float: 0.7
          }
          Overrides {
            Name: "cs:SpreadWalkPrecision"
            Float: 0.5
          }
          Overrides {
            Name: "cs:SpreadJumpPrecision"
            Float: 0.4
          }
          Overrides {
            Name: "cs:SpreadCrouchPrecision"
            Float: 0.8
          }
          Overrides {
            Name: "cs:SpreadAimModifierBonus"
            Float: 0.3
          }
          Overrides {
            Name: "cs:SpreadStandPrecision:tooltip"
            String: "Precision % when the player is standing without aim. Range between 0 to 1 (from least accurate to most accurate)."
          }
          Overrides {
            Name: "cs:SpreadWalkPrecision:tooltip"
            String: "Precision % when the player is walking. Range between 0 to 1 (from least accurate to most accurate)."
          }
          Overrides {
            Name: "cs:SpreadJumpPrecision:tooltip"
            String: "Precision % when the player is jumping. Range between 0 to 1 (from least accurate to most accurate)."
          }
          Overrides {
            Name: "cs:SpreadCrouchPrecision:tooltip"
            String: "Precision % when the player is crouching. Range between 0 to 1 (from least accurate to most accurate)."
          }
          Overrides {
            Name: "cs:SpreadAimModifierBonus:tooltip"
            String: "Amount of % added to the spread precision when the player aims. Range between 0 to 1."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 9654009968499969690
      Name: "WeaponAimClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    When the weapon owner aims, this script changes player local camera properties\r\n    such as distance, fov and offset for aiming functionality.\r\n\r\n    This script also sends an event when the weapon owner aims:\r\n    WeaponAiming (Player owner, bool isAiming) [Client]\r\n    owner       - local player that aims\r\n    isAiming    - if the owner is aiming or not\r\n\r\n    Note:   This aiming script works best for first-person and third-person camera angles.\r\n            Disable aiming if the weapon is used in other camera angles.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\n\r\n-- Exposed variables --\r\nlocal CAN_AIM = WEAPON:GetCustomProperty(\"EnableAim\")\r\nlocal AIM_BINDING = WEAPON:GetCustomProperty(\"AimBinding\")\r\n\r\nlocal ZOOM_DISTANCE = script:GetCustomProperty(\"AimZoomDistance\")\r\n\r\n-- Internal handle variables --\r\nlocal pressedHandle = nil              -- Event handle when player presses the aim binding\r\nlocal releasedHandle = nil             -- Event handle when player releases the aim binding\r\n\r\n-- Internal camera variables --\r\nlocal cameraResetDistance = 0\r\nlocal cameraTargetDistance = 0\r\nlocal lerpTime = 0\r\nlocal activeCamera = nil\r\nlocal isScoping = false\r\n\r\nfunction Tick(deltaTime)\r\n    if not CAN_AIM then return end\r\n    if not Object.IsValid(WEAPON) then return end\r\n\r\n    -- We call OnEquipped function after player is fully loaded in client\r\n    if Object.IsValid(WEAPON.owner) and not Object.IsValid(activeCamera) then\r\n        OnEquipped(WEAPON, WEAPON.owner)\r\n    end\r\n\r\n    -- Reset when player dies\r\n    if Object.IsValid(WEAPON.owner) and WEAPON.owner.isDead and isScoping then\r\n        ResetScoping(WEAPON.owner)\r\n    end\r\n\r\n    -- Smoothly lerps the camera distance when player aims\r\n    LerpCameraDistance(deltaTime)\r\nend\r\n\r\n -- Moves the camera into position over time\r\nfunction LerpCameraDistance(deltaTime)\r\n    if lerpTime >= 1 then return end\r\n    if not Object.IsValid(activeCamera) then return end\r\n\r\n    lerpTime = lerpTime + deltaTime\r\n    activeCamera.currentDistance = CoreMath.Lerp(activeCamera.currentDistance, cameraTargetDistance, lerpTime)\r\nend\r\n\r\n -- Gets player current active camera\r\nfunction GetPlayerActiveCamera(player)\r\n    if not Object.IsValid(player) then\r\n        return nil\r\n    end\r\n\r\n    if player:GetOverrideCamera() then\r\n        return player:GetOverrideCamera()\r\n    else\r\n        return player:GetDefaultCamera()\r\n    end\r\nend\r\n\r\nfunction EnableScoping(player)\r\n    if not Object.IsValid(player) then return end\r\n    if player.isDead then return end\r\n\r\n    cameraTargetDistance = ZOOM_DISTANCE\r\n    lerpTime = 0\r\n    isScoping = true\r\n\r\n    Events.Broadcast(\"WeaponAiming\", player, true)\r\nend\r\n\r\nfunction ResetScoping(player)\r\n    cameraTargetDistance = cameraResetDistance\r\n    lerpTime = 0\r\n    isScoping = false\r\n\r\n    Events.Broadcast(\"WeaponAiming\", player, false)\r\nend\r\n\r\nfunction OnBindingPressed(player, actionName)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if player ~= WEAPON.owner then return end\r\n    if actionName == AIM_BINDING then\r\n        EnableScoping(player)\r\n\tend\r\nend\r\n\r\nfunction OnBindingReleased(player, actionName)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if player ~= WEAPON.owner then return end\r\n    if actionName == AIM_BINDING then\r\n        ResetScoping(player)\r\n\tend\r\nend\r\n\r\nfunction OnEquipped(weapon, player)\r\n    if not CAN_AIM then return end\r\n    if not Object.IsValid(player) then return end\r\n    if not player:IsA(\"Player\") then return end\r\n\r\n    -- Register event handles\r\n    if not pressedHandle then\r\n        pressedHandle = Input.actionPressedEvent:Connect(OnBindingPressed)\r\n    end\r\n    if not releasedHandle then\r\n        releasedHandle = Input.actionReleasedEvent:Connect(OnBindingReleased)\r\n    end\r\n\r\n    -- Set new active camera\r\n    activeCamera = GetPlayerActiveCamera(player)\r\n    if Object.IsValid(activeCamera) then\r\n        cameraResetDistance = activeCamera.currentDistance\r\n        cameraTargetDistance = cameraResetDistance\r\n    end\r\n    lerpTime = 0\r\nend\r\n\r\nfunction OnUnequipped(weapon, player)\r\n    if not CAN_AIM then return end\r\n\r\n    -- Disconnects all the handle events to avoid event trigger\r\n    -- for previous player when the weapon is used by next player\r\n\tif pressedHandle then\r\n        pressedHandle:Disconnect()\r\n        pressedHandle = nil\r\n    end\r\n    if releasedHandle then\r\n        releasedHandle:Disconnect()\r\n        releasedHandle = nil\r\n    end\r\n\r\n    ResetScoping(player)\r\n\r\n    -- Remove the reference to the camera\r\n    if Object.IsValid(activeCamera) then\r\n        activeCamera.currentDistance = cameraResetDistance\r\n        activeCamera = nil\r\n    end\r\nend\r\n\r\n-- Initialize\r\nWEAPON.unequippedEvent:Connect(OnUnequipped)"
        CustomParameters {
          Overrides {
            Name: "cs:AimZoomDistance"
            Float: 100
          }
          Overrides {
            Name: "cs:AimZoomDistance:tooltip"
            String: "Camera distance when aiming."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 6795206535065158887
      Name: "Generic Sound Pickup"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 13644638768556943119
          Objects {
            Id: 13644638768556943119
            Name: "Generic Sound Pickup"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 14161033992207230210
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14161033992207230210
            Name: "Weapon Pickup SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 13644638768556943119
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 9325668214448125402
              }
              AutoPlay: true
              Volume: 1
              Falloff: 3600
              Radius: 400
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 9325668214448125402
      Name: "Weapon Pickup 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_weapon_pickup"
      }
    }
    Assets {
      Id: 440168262593430639
      Name: "EquipmentPickupClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    Custom pickup script adds additional features to pickup functionality such as\r\n    pickup sound and enabling trigger collision on equipment unequipped event.\r\n ]]\r\n\r\n-- Internal custom properties\r\nlocal EQUIPMENT = script:FindAncestorByType(\'Equipment\')\r\nif not EQUIPMENT:IsA(\'Equipment\') then\r\n    error(script.name .. \" should be part of Equipment object hierarchy.\")\r\nend\r\n\r\n-- Exposed variables --\r\nlocal PICKUP_SOUND = script:GetCustomProperty(\"PickupSound\")\r\n\r\n-- Internal variables --\r\nlocal DEFAULT_LIFESPAN = 1\r\n\r\n-- nil OnEquipped(Equipment)\r\nfunction OnEquipped(equipment)\r\n\r\n    -- Spawn a pickup sound when a player picks up the weapon\r\n    if PICKUP_SOUND then\r\n        local pickupSound = World.SpawnAsset(PICKUP_SOUND, {position = equipment:GetWorldPosition()})\r\n\r\n        -- Set a default lifespan if the pickup sound template has 0 lifeSpan\r\n        if pickupSound.lifeSpan == 0 then\r\n            pickupSound.lifeSpan = DEFAULT_LIFESPAN\r\n        end\r\n    end\r\nend\r\n\r\n-- Initialize\r\nEQUIPMENT.equippedEvent:Connect(OnEquipped)"
        CustomParameters {
          Overrides {
            Name: "cs:PickupSound"
            AssetReference {
              Id: 841534158063459245
            }
          }
        }
      }
      VirtualFolderPath: "Equipment"
    }
    Assets {
      Id: 2472577150731722024
      Name: "WeaponAimServer"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script adds aiming functionality to the weapon. It applies aiming stance and aiming speed\r\n    when user triggers the specified aiming binding on server.\r\n    The script also uses mount speed to correct the aim speed.\r\n\r\n    Note:   This aiming script works best for first-person and third-person camera angles.\r\n            Disable aiming if the weapon is used in other camera angles.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\n\r\n-- Exposed variables --\r\nlocal CAN_AIM = WEAPON:GetCustomProperty(\"EnableAim\")\r\nlocal AIM_BINDING = WEAPON:GetCustomProperty(\"AimBinding\") or \"ability_secondary\"\r\n\r\nlocal AIM_WALK_SPEED_PERCENTAGE = script:GetCustomProperty(\"AimWalkSpeedPercentage\")\r\nlocal AIM_ACTIVE_STANCE = script:GetCustomProperty(\"AimActiveStance\")\r\n\r\n-- Internal variables --\r\nlocal speedReduced = 0                      -- Cache the amount of speed reduced from the player walk speed\r\nlocal pressedHandle = nil                   -- Event handle when player presses the aim binding\r\nlocal releasedHandle = nil                  -- Event handle when player releases the aim binding\r\nlocal playerDieHandle = nil                 -- Event handle when player dies\r\nlocal UNARMED_STANCE = \"unarmed_stance\"     -- Default stance when the weapon is unequipped\r\n\r\n-- Player states variables\r\nlocal isMounted = false\r\nlocal isAiming = false\r\n\r\nfunction Tick(deltaTime)\r\n    -- The script can works when the weapon has the owner\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if not Object.IsValid(WEAPON.owner) then return end\r\n\r\n    -- Makes sure that the walk speed resets properly when player mounts\r\n    if isMounted ~= WEAPON.owner.isMounted then\r\n        if isAiming and not WEAPON.owner.isMounted then\r\n            SetAimingSpeed(WEAPON.owner)\r\n        elseif not isAiming then\r\n            ResetPlayerSpeed(WEAPON.owner)\r\n        end\r\n        isMounted = WEAPON.owner.isMounted\r\n    end\r\nend\r\n\r\n-- Sets the speed when the player aims using speedReduced variable\r\nfunction SetAimingSpeed(player)\r\n    if Object.IsValid(player) and player == WEAPON.owner then\r\n        if not player.isMounted and speedReduced == 0 then\r\n            speedReduced = player.maxWalkSpeed * AIM_WALK_SPEED_PERCENTAGE\r\n            player.maxWalkSpeed = player.maxWalkSpeed - speedReduced\r\n        end\r\n        player.animationStance = AIM_ACTIVE_STANCE\r\n    end\r\nend\r\n\r\n-- Resets the player speed to the current walk speed\r\nfunction ResetPlayerSpeed(player)\r\n    if Object.IsValid(WEAPON) and Object.IsValid(player) then\r\n        if not player.isMounted then\r\n            player.maxWalkSpeed = player.maxWalkSpeed + speedReduced\r\n            speedReduced = 0\r\n        end\r\n        player.animationStance = WEAPON.animationStance\r\n    end\r\nend\r\n\r\nfunction OnBindingPressed(player, actionName)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if player ~= WEAPON.owner then return end\r\n    if actionName == AIM_BINDING then\r\n        SetAimingSpeed(player)\r\n        isAiming = true\r\n\tend\r\nend\r\n\r\nfunction OnBindingReleased(player, actionName)\r\n    if not Object.IsValid(WEAPON) then return end\r\n    if player ~= WEAPON.owner then return end\r\n    if actionName == AIM_BINDING then\r\n        ResetPlayerSpeed(player)\r\n        isAiming = false\r\n\tend\r\nend\r\n\r\nfunction OnPlayerDied(player, damage)\r\n    ResetPlayerSpeed(player)\r\nend\r\n\r\nfunction OnEquipped(weapon, player)\r\n    if not CAN_AIM then return end\r\n\r\n    -- Connects the handle events\r\n    if not pressedHandle then\r\n        pressedHandle = Input.actionPressedEvent:Connect(OnBindingPressed)\r\n    end\r\n    if not releasedHandle then\r\n        releasedHandle = Input.actionReleasedEvent:Connect(OnBindingReleased)\r\n    end\r\n    playerDieHandle = player.diedEvent:Connect(OnPlayerDied)\r\nend\r\n\r\nfunction OnUnequipped(weapon, player)\r\n    if not CAN_AIM then return end\r\n\r\n    -- Disconnects all the handle events to avoid event trigger\r\n    -- for previous player when the weapon is used by next player\r\n\tif pressedHandle then\r\n        pressedHandle:Disconnect()\r\n        pressedHandle = nil\r\n    end\r\n    if releasedHandle then\r\n        releasedHandle:Disconnect()\r\n        releasedHandle = nil\r\n    end\r\n    if (playerDieHandle) then playerDieHandle:Disconnect() end\r\n\r\n    -- Reset player speed and animation stance on unequip\r\n    ResetPlayerSpeed(player)\r\n    player.animationStance = UNARMED_STANCE\r\nend\r\n\r\n-- Connecting weapon event to functions\r\nWEAPON.equippedEvent:Connect(OnEquipped)\r\nWEAPON.unequippedEvent:Connect(OnUnequipped)"
        CustomParameters {
          Overrides {
            Name: "cs:AimActiveStance"
            String: "2hand_rifle_aim_shoulder"
          }
          Overrides {
            Name: "cs:AimWalkSpeedPercentage"
            Float: 0.5
          }
          Overrides {
            Name: "cs:AimActiveStance:tooltip"
            String: "Animation stance when aiming with this weapon. Default is 2hand_rifle_aim_shoulder."
          }
          Overrides {
            Name: "cs:AimWalkSpeedPercentage:tooltip"
            String: "Percentage walk speed reduction when player is aiming. Must be in the range of 0 to 1."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 12210489528647249200
      Name: "WeaponDamageShootServer"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    This script adds headshot damage in combination with custom base damage.\r\n--]]\r\n\r\n-- Internal custom properties\r\nlocal WEAPON = script:FindAncestorByType(\'Weapon\')\r\nif not WEAPON:IsA(\'Weapon\') then\r\n    error(script.name .. \" should be part of Weapon object hierarchy.\")\r\nend\r\n\r\n-- Exposed variables --\r\nlocal DAMAGE_AMOUNT = script:GetCustomProperty(\"BaseDamage\")\r\nlocal DAMAGE_HEADSHOT = script:GetCustomProperty(\"HeadshotDamage\")\r\n\r\nfunction GetValidTarget(target)\r\n    if not Object.IsValid(target) then return nil end\r\n\r\n    if target:IsA(\"Player\") or target:IsA(\"Damageable\") then\r\n        return target\r\n    else\r\n        return target:FindAncestorByType(\"Damageable\")\r\n    end\r\nend\r\n\r\nfunction OnWeaponInteracted(weapon, impactData)\r\n    local target = GetValidTarget(impactData.targetObject)\r\n    \r\n    -- Apply damage to target if it\'s a player\r\n    if Object.IsValid(target) then\r\n\r\n        -- Assign a headshot damage if projectile hit enemy\'s head\r\n        local damage = DAMAGE_AMOUNT\r\n        if impactData.isHeadshot and target:IsA(\"Player\") then\r\n            damage = DAMAGE_HEADSHOT\r\n        end\r\n\r\n        -- Creating damage information\r\n        -- Note: number of hits sums up the damage number for multi-shot weapons (e.g. shotgun)\r\n        local newDamage = Damage.New(damage * #impactData:GetHitResults())\r\n        newDamage.reason = DamageReason.COMBAT\r\n        newDamage.sourceAbility = impactData.sourceAbility\r\n        newDamage.sourcePlayer = impactData.weaponOwner\r\n\r\n        -- Registering hit result on damage\r\n        local hitResult = impactData:GetHitResult()\r\n        if hitResult.other then\r\n            newDamage:SetHitResult(hitResult)\r\n        end\r\n\r\n        -- Apply damage to the enemy player\r\n        target:ApplyDamage(newDamage)\r\n    end\r\nend\r\n\r\n-- Initialize\r\nWEAPON.targetImpactedEvent:Connect(OnWeaponInteracted)"
        CustomParameters {
          Overrides {
            Name: "cs:BaseDamage"
            Float: 0
          }
          Overrides {
            Name: "cs:HeadshotDamage"
            Float: 0
          }
          Overrides {
            Name: "cs:BaseDamage:tooltip"
            String: "Normal damage that this weapon will do to enemy players."
          }
          Overrides {
            Name: "cs:HeadshotDamage:tooltip"
            String: "Headshot damage that this weapon will do to enemy players."
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 8459825612529451237
      Name: "EquipmentPickupServer"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n    Custom pickup script adds additional features to pickup functionality such as\r\n    enabling trigger collision on equipment unequipped event.\r\n ]]\r\n\r\n-- Internal custom properties\r\nlocal EQUIPMENT = script:FindAncestorByType(\'Equipment\')\r\nif not EQUIPMENT:IsA(\'Equipment\') then\r\n    error(script.name .. \" should be part of Equipment object hierarchy.\")\r\nend\r\nlocal TRIGGER = script:GetCustomProperty(\"Trigger\"):WaitForObject()\r\n\r\n-- nil OnEquipped(Equipment)\r\nfunction OnEquipped(equipment, player)\r\n\r\n    -- Turn off trigger once equipped\r\n    if Object.IsValid(TRIGGER) then\r\n        TRIGGER.collision = Collision.FORCE_OFF\r\n    end\r\n\r\nend\r\n\r\n-- nil OnUnequipped(Equipment)\r\nfunction OnUnequipped(equipment)\r\n    -- Make sure that the equipment and trigger still exists\r\n    if Object.IsValid(equipment) and Object.IsValid(TRIGGER) then\r\n\r\n        -- Make the equipment pickable again after a second\r\n        if TRIGGER:IsCollidableInHierarchy() then\r\n            Task.Wait(1)\r\n            if Object.IsValid(TRIGGER) then\r\n                TRIGGER.collision = Collision.INHERIT\r\n            end\r\n        else\r\n            -- Destroy the equipment if it\'s not interactable\r\n            equipment:Destroy()\r\n        end\r\n    end\r\nend\r\n\r\n-- Initialize\r\nEQUIPMENT.equippedEvent:Connect(OnEquipped)\r\nEQUIPMENT.unequippedEvent:Connect(OnUnequipped)"
        CustomParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
            }
          }
        }
      }
      VirtualFolderPath: "Equipment"
    }
    Assets {
      Id: 10464718583626148499
      Name: "Shotgun Attack Sound"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 17731318846953981081
          Objects {
            Id: 17731318846953981081
            Name: "Shotgun Muzzle Flash"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 8920021948731043633
            ChildIds: 13821669515268442257
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8920021948731043633
            Name: "Gunshot Shotgun Set 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17731318846953981081
            UnregisteredParameters {
              Overrides {
                Name: "bp:Type"
                Enum {
                  Value: "mc:esfx_gunshot_shotgun_01:4"
                }
              }
              Overrides {
                Name: "bp:Enable Dynamic Distant Sound"
                Bool: false
              }
              Overrides {
                Name: "bp:Main Sound Mix Medium Distance Type"
                Enum {
                  Value: "mc:esfx_gunshot_shotgun_01:3"
                }
              }
              Overrides {
                Name: "bp:Main Sound Mix Medium Distance Pitch"
                Float: -200
              }
              Overrides {
                Name: "bp:Medium Distant Sound Type"
                Enum {
                  Value: "mc:esfx_distant_gunshot_set:5"
                }
              }
              Overrides {
                Name: "bp:Medium Distant Sound Type Volume"
                Float: 10
              }
              Overrides {
                Name: "bp:Main Sound Mix Medium Distance Volume"
                Float: 15
              }
              Overrides {
                Name: "bp:Medium Sound Cutoff Distance"
                Float: 2000
              }
              Overrides {
                Name: "bp:Far Sound Cutoff Distance"
                Float: 3500
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4754983591477676959
              }
              AudioBP {
                AutoPlay: true
                Volume: 0.7
                Falloff: 1200
                Radius: 400
                EnableOcclusion: true
                IsSpatializationEnabled: true
                IsAttenuationEnabled: true
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 13821669515268442257
            Name: "Gunshot Shotgun Set 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17731318846953981081
            UnregisteredParameters {
              Overrides {
                Name: "bp:Type"
                Enum {
                  Value: "mc:esfx_gunshot_shotgun_01:3"
                }
              }
              Overrides {
                Name: "bp:Enable Dynamic Distant Sound"
                Bool: true
              }
              Overrides {
                Name: "bp:Main Sound Mix Medium Distance Type"
                Enum {
                  Value: "mc:esfx_gunshot_shotgun_01:3"
                }
              }
              Overrides {
                Name: "bp:Main Sound Mix Medium Distance Pitch"
                Float: -200
              }
              Overrides {
                Name: "bp:Medium Distant Sound Type"
                Enum {
                  Value: "mc:esfx_distant_gunshot_set:5"
                }
              }
              Overrides {
                Name: "bp:Medium Distant Sound Type Volume"
                Float: 10
              }
              Overrides {
                Name: "bp:Main Sound Mix Medium Distance Volume"
                Float: 15
              }
              Overrides {
                Name: "bp:Medium Sound Cutoff Distance"
                Float: 2000
              }
              Overrides {
                Name: "bp:Far Sound Cutoff Distance"
                Float: 3500
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 4754983591477676959
              }
              AudioBP {
                AutoPlay: true
                Volume: 1
                Falloff: 5500
                Radius: 400
                EnableOcclusion: true
                IsSpatializationEnabled: true
                IsAttenuationEnabled: true
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 4754983591477676959
      Name: "Gunshot Shotgun Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_gunshot_shotgun_ref"
      }
    }
    Assets {
      Id: 307406115803496087
      Name: "Generic Impact Player Effect"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 11352976760511440785
          Objects {
            Id: 11352976760511440785
            Name: "Generic Impact Player Effect"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 12801116442223059089
            ChildIds: 15368370472108963347
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 12801116442223059089
            Name: "Generic Player Impact VFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11352976760511440785
            UnregisteredParameters {
              Overrides {
                Name: "bp:color"
                Color {
                  R: 0.950000048
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 7628097165165581423
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15368370472108963347
            Name: "Bullet Body Impact SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11352976760511440785
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 7866413056776856701
              }
              AutoPlay: true
              Volume: 1
              Falloff: 3600
              Radius: 400
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
    }
    Assets {
      Id: 7866413056776856701
      Name: "Bullet Body Impact SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bullet_impact_body"
      }
    }
    Assets {
      Id: 7628097165165581423
      Name: "Generic Player Impact VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_player_impact"
      }
    }
    Assets {
      Id: 16118667818826686655
      Name: "Shotgun Reload Sound"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 3655346369602173894
          Objects {
            Id: 3655346369602173894
            Name: "Shotgun Reload Sound"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 16716249799289046792
            UnregisteredParameters {
            }
            Lifespan: 1
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 16716249799289046792
            Name: "Gun Weapon Reload Set 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 3655346369602173894
            UnregisteredParameters {
              Overrides {
                Name: "bp:Type"
                Enum {
                  Value: "mc:esfx_gunreloads:44"
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 11279392096978883335
              }
              AudioBP {
                AutoPlay: true
                Volume: 1
                Falloff: 1000
                Radius: 100
                EnableOcclusion: true
                IsSpatializationEnabled: true
                IsAttenuationEnabled: true
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 11279392096978883335
      Name: "Gun Weapon Reload Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_reloads_ref"
      }
    }
    Assets {
      Id: 1683114021203363022
      Name: "Generic Sound Out Of Ammo"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 17487107411025673192
          Objects {
            Id: 17487107411025673192
            Name: "Generic Sound Out Of Ammo"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 14374793592845219494
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 14374793592845219494
            Name: "Dry Fire Click Generic Clicky 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 17487107411025673192
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 3358730465653412221
              }
              AutoPlay: true
              Volume: 1
              Falloff: 1200
              Radius: 400
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 3358730465653412221
      Name: "Dry Fire Click Generic Clicky 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_clicky_dryfire_01_Cue_ref"
      }
    }
    Assets {
      Id: 15728676179772725900
      Name: "Generic Impact Surface Aligned"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 6246242700242467092
          Objects {
            Id: 6246242700242467092
            Name: "Generic Impact Surface Aligned"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 15676067918659116593
            UnregisteredParameters {
            }
            Lifespan: 6
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 15676067918659116593
            Name: "Impact Geo"
            Transform {
              Location {
              }
              Rotation {
                Pitch: -90
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 6246242700242467092
            ChildIds: 11244076573502085025
            ChildIds: 6983234237468868165
            ChildIds: 8007739458989036561
            ChildIds: 9519357983113725241
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Folder {
              IsGroup: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 11244076573502085025
            Name: "Impact Ground Dirt 01 SFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15676067918659116593
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 3307794794401153799
              }
              AutoPlay: true
              Volume: 1
              Falloff: 3600
              Radius: 400
              EnableOcclusion: true
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 6983234237468868165
            Name: "Gun Impact Small VFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 15676067918659116593
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 17144409617272687275
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 8007739458989036561
            Name: "Impact Sparks VFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 0.4
                Y: 0.4
                Z: 0.4
              }
            }
            ParentId: 15676067918659116593
            UnregisteredParameters {
              Overrides {
                Name: "bp:Density"
                Float: 0.3
              }
              Overrides {
                Name: "bp:Particle Scale Multiplier"
                Float: 2
              }
              Overrides {
                Name: "bp:Spark Line Scale Multiplier"
                Float: 1
              }
              Overrides {
                Name: "bp:Enable Hotspot"
                Bool: true
              }
              Overrides {
                Name: "bp:Enable Flash"
                Bool: true
              }
              Overrides {
                Name: "bp:Enable Spark Lines"
                Bool: true
              }
              Overrides {
                Name: "bp:Enable Sparks"
                Bool: true
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 11887549032181544333
              }
              TeamSettings {
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 9519357983113725241
            Name: "Decal Bullet Damage Metal"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 0.1
                Y: 0.1
                Z: 0.1
              }
            }
            ParentId: 15676067918659116593
            UnregisteredParameters {
              Overrides {
                Name: "bp:Shape Index"
                Int: 0
              }
              Overrides {
                Name: "bp:Fade Delay"
                Float: 4
              }
              Overrides {
                Name: "bp:Fade Time"
                Float: 2
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 16471063547951275134
              }
              TeamSettings {
              }
              DecalBP {
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 16471063547951275134
      Name: "Decal Bullet Damage Metal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_bullet_metal_001"
      }
    }
    Assets {
      Id: 11887549032181544333
      Name: "Impact Sparks VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_impact_sparks"
      }
    }
    Assets {
      Id: 17144409617272687275
      Name: "Gun Impact Small VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_gun_impact_dirt_sm"
      }
    }
    Assets {
      Id: 3307794794401153799
      Name: "Impact Ground Dirt 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bullet_impact_ground_dirt_01_Cue_ref"
      }
    }
    Assets {
      Id: 9023864673320310867
      Name: "Generic Trail"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 11388592286874595498
          Objects {
            Id: 11388592286874595498
            Name: "Generic Trail"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 7928271528055639521
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 7928271528055639521
            Name: "Basic Projectile Trail VFX"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 11388592286874595498
            UnregisteredParameters {
              Overrides {
                Name: "bp:colorB"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
              Overrides {
                Name: "bp:Particle Scale Multiplier"
                Float: 0.4
              }
              Overrides {
                Name: "bp:Life"
                Float: 0.22
              }
              Overrides {
                Name: "bp:Emissive Boost"
                Float: 2
              }
              Overrides {
                Name: "bp:Color"
                Color {
                  R: 0.97
                  G: 0.366159
                  A: 1
                }
              }
              Overrides {
                Name: "bp:ColorB"
                Color {
                  R: 1
                  G: 0.73827821
                  B: 0.24000001
                  A: 1
                }
              }
              Overrides {
                Name: "bp:ColorC"
                Color {
                  R: 1
                  G: 1
                  B: 1
                  A: 1
                }
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 17977280587505271142
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 17977280587505271142
      Name: "Basic Projectile Trail VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_basic_projectile_trail"
      }
    }
    Assets {
      Id: 3934900758394374494
      Name: "Generic Muzzle Flash"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 14475397580931583970
          Objects {
            Id: 14475397580931583970
            Name: "Generic Muzzle Flash"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 4186545988497538470
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 4186545988497538470
            Name: "Generic Muzzleflash VFX"
            Transform {
              Location {
              }
              Rotation {
                Pitch: -90
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 14475397580931583970
            UnregisteredParameters {
              Overrides {
                Name: "bp:Particle Size Multiplier"
                Float: 1.2
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Blueprint {
              BlueprintAsset {
                Id: 16322635077100878811
              }
              Vfx {
                AutoPlay: true
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:high"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 16322635077100878811
      Name: "Generic Muzzle Flash VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_generic_muzzleflash"
      }
    }
    Assets {
      Id: 5936961085923459411
      Name: "Generic Bullet Advanced"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 1144382770181115560
          Objects {
            Id: 1144382770181115560
            Name: "Generic Bullet Advanced"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 17509819374422029285
            ChildIds: 10923451579188149452
            UnregisteredParameters {
            }
            WantsNetworking: true
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            NetworkContext {
              MinDetailLevel {
                Value: "mc:edetaillevel:low"
              }
              MaxDetailLevel {
                Value: "mc:edetaillevel:ultra"
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 17509819374422029285
            Name: "Bullet"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 1144382770181115560
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:forceoff"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:forceoff"
            }
            CoreMesh {
              MeshAsset {
                Id: 9826710443425479508
              }
              Teams {
                IsTeamCollisionEnabled: true
                IsEnemyCollisionEnabled: true
              }
              DisableReceiveDecals: true
              InteractWithTriggers: true
              StaticMesh {
                Physics {
                }
                BoundsScale: 1
              }
            }
            Relevance {
              Value: "mc:edistancerelevance:critical"
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
          Objects {
            Id: 10923451579188149452
            Name: "WeaponProjectileWhizbySoundClient"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 1144382770181115560
            UnregisteredParameters {
              Overrides {
                Name: "cs:ComponentRoot"
                ObjectReference {
                  SubObjectId: 1144382770181115560
                }
              }
              Overrides {
                Name: "cs:WhizbySound"
                AssetReference {
                  Id: 3144871937647846964
                }
              }
              Overrides {
                Name: "cs:MaxWhizbyDistance"
                Float: 500
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Script {
              ScriptAsset {
                Id: 11481617001287633814
              }
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 3144871937647846964
      Name: "Weapon Projectile Whizby Sound"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 13337628279148938722
          Objects {
            Id: 13337628279148938722
            Name: "Whizby Sound"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            UnregisteredParameters {
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            AudioInstance {
              AudioAsset {
                Id: 384250229741832731
              }
              AutoPlay: true
              Transient: true
              Volume: 1
              Falloff: 4000
              EnableOcclusion: true
              IsSpatializationEnabled: true
              IsAttenuationEnabled: true
            }
            NetworkRelevanceDistance {
              Value: "mc:eproxyrelevance:critical"
            }
            IsReplicationEnabledByDefault: true
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
      VirtualFolderPath: "Weapons"
      VirtualFolderPath: "Projectile"
      VirtualFolderPath: "Dependecies"
    }
    Assets {
      Id: 384250229741832731
      Name: "Gunshot Bullet Flyby Passby Whiz 02 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_bullet_flyby_02_Cue_ref"
      }
    }
    Assets {
      Id: 11481617001287633814
      Name: "WeaponProjectileWhizbySoundClient"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n--[[\r\n\tSpawns whizby sound as the projectile flies through a player.\r\n ]]\r\n\r\n -- Internal custom properties\r\nlocal COMPONENT_ROOT = script:GetCustomProperty(\"ComponentRoot\"):WaitForObject()\r\nlocal WHIZBY_SOUND = script:GetCustomProperty(\"WhizbySound\")\r\nlocal MAX_WHIZBY_DISTANCE = script:GetCustomProperty(\"MaxWhizbyDistance\")\r\n\r\n-- Constant variables\r\nlocal LOCAL_PLAYER = Game.GetLocalPlayer()\r\n\r\nTask.Wait()\r\n\r\n-- Variables\r\nlocal lastPosition = COMPONENT_ROOT:GetWorldPosition()\r\n\r\n-- Detects when to spawn the whizby sound\r\nfunction UpdateProjectile()\r\n\tlocal startPosition = lastPosition\r\n\tlocal endPosition = COMPONENT_ROOT:GetWorldPosition()\r\n\r\n\tif WHIZBY_SOUND then\r\n\t\tlocal playerStartOffset = LOCAL_PLAYER:GetWorldPosition() - startPosition\r\n\t\tlocal playerEndOffset = LOCAL_PLAYER:GetWorldPosition() - endPosition\r\n\t\tlocal shotOffset = endPosition - startPosition\r\n\r\n\t\tif playerStartOffset .. shotOffset > 0.0 and playerEndOffset .. shotOffset < 0.0 then\r\n\t\t\tlocal cross = playerStartOffset ^ shotOffset\r\n\t\t\tlocal perpendicularDistance = cross.size / shotOffset.size\r\n\r\n\t\t\tif perpendicularDistance < MAX_WHIZBY_DISTANCE then\r\n\t\t\t\tlocal closestPoint = startPosition + shotOffset:GetNormalized() * (shotOffset:GetNormalized() .. playerStartOffset)\r\n\t\t\t\tWorld.SpawnAsset(WHIZBY_SOUND, {position = closestPoint})\r\n\t\t\tend\r\n\t\tend\r\n\tend\r\n\r\n\tlastPosition = endPosition\r\nend\r\n\r\nfunction Tick()\r\n\tUpdateProjectile()\r\nend\r\n"
        CustomParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:WhizbySound"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:MaxWhizbyDistance"
            Float: 1000
          }
        }
      }
      VirtualFolderPath: "Weapon"
    }
    Assets {
      Id: 9826710443425479508
      Name: "Modern Weapon Ammo - Bullet 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_ammo_bullet_tip_001"
      }
    }
    Assets {
      Id: 17365099617506282650
      Name: "Treasure Ray Burst"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Treasure_Rays"
      }
    }
    Assets {
      Id: 161941836213610146
      Name: "Level Up VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_Level_Up"
      }
    }
    Assets {
      Id: 15696524381397938084
      Name: "Magic Circle Generator Advanced: Sci-fi VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_circle_generator_scifi"
      }
    }
    Assets {
      Id: 4204935042848427516
      Name: "Magic Circle Generator Advanced: Fantasy VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_magic_circle_generator_fantasy"
      }
    }
    Assets {
      Id: 8926360128358697326
      Name: "Brick Red Old 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_brick_red_old_001_uv"
      }
    }
    Assets {
      Id: 10869945471657645318
      Name: "Sci-fi Terminal Keyboard 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_scifi_keyboard_001_ref"
      }
    }
    Assets {
      Id: 5856429651633438801
      Name: "Custom Detail 3 from Sci-fi Console Screen 01_1"
      PlatformAssetType: 13
      CustomMaterialAsset {
        BaseMaterialId: 15017163480444843006
        ParameterOverrides {
          Overrides {
            Name: "index"
            Float: 2
          }
        }
      }
    }
    Assets {
      Id: 15017163480444843006
      Name: "Animated Screen"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_prop_scf_terminal_screen_001_ref"
      }
    }
    Assets {
      Id: 10993237832432372474
      Name: "Sci-fi Console Screen 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_scifi_screen_001_ref"
      }
    }
    Assets {
      Id: 13613791909257878711
      Name: "Sci-fi Terminal Base 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_scifi_terminal_base_001_ref"
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
    Assets {
      Id: 534095032646055151
      Name: "Cube - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_001"
      }
    }
    Assets {
      Id: 3107339980388704468
      Name: "Asphalt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gen_asphault_001"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 3908110495107565482
      Name: "KillZoneServer"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nCopyright 2019 Manticore Games, Inc.\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated\r\ndocumentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the\r\nrights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit\r\npersons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the\r\nSoftware.\r\n\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE\r\nWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR\r\nCOPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR\r\nOTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n--]]\r\n\r\n-- Internal custom property\r\nlocal KILL_TRIGGER = script:GetCustomProperty(\"KillTrigger\"):WaitForObject()\r\n\r\n-- nil OnBeginOverlap(Trigger, Object)\r\n-- Kills a player when they enter the trigger\r\nfunction OnBeginOverlap(trigger, other)\r\n    if other:IsA(\"Player\") then\r\n        other:Die()\r\n    end\r\nend\r\n\r\n-- Connect trigger overlap event\r\nKILL_TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)\r\n"
        CustomParameters {
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "72edf4dfcae34a58b15a07672e73d42e"
    OwnerAccountId: "bd602d5201b04b3fbf7be10f59c8f974"
    OwnerName: "CoreAcademy"
  }
  SerializationVersion: 123
}
IncludesAllDependencies: true
