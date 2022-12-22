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
  SerializationVersion: 123
  VirtualFolderPath: "Checkpoints"
}
