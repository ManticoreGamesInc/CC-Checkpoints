<div align="center">

# CC-Checkpoints

[![Build Status](https://github.com/ManticoreGamesInc/CC-Checkpoints/workflows/CI/badge.svg)](https://github.com/ManticoreGamesInc/CC-Checkpoints/actions/workflows/ci.yml?query=workflow%3ACI%29)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/ManticoreGamesInc/CC-Checkpoints?style=plastic)

![Preview](/Screenshots/Main.png)

</div>

## Finding the Component

This component can be found under the **CoreAcademy** account on Community Content.

## Overview

The Checkpoints component allows players to save spawn locations based on certain actions.

Some action examples could be:

- Entering a trigger
- Interacting with a trigger
- Killing the final boss

## Setup

For a full example, drag and drop the Checkpoints Example template into the Hierarchy.

Make sure to activate the Enable Player Storage property inside the Game Settings.

This template will have multiple examples of triggers that act as checkpoints and destroying the crate is also a checkpoint.

There is also an example to reset progress through the portal at the end.

If you want to create the checkpoints from scratch, then drag and drop the Checkpoints template instead.

The checkpoints are connected using a data table. See below for more information on how to create checkpoints.

## How to use this Template

### Custom Properties

The Checkpoints template contains 2 custom properties on the root of the template.

- Use Priority

Priority is given to checkpoints based on the row value inside the CheckpointsTable data table.
Players will only activate checkpoints if it is higher priority to their previous checkpoint.
This is useful if you want to prevent older checkpoints in a level from being re-activated.

- Use Persistence

This will enable Player Storage so the player's last saved checkpoint will be saved for future play sessions.
Make sure to activate the Enable Player Storage property inside the Game Settings.

### Create Checkpoints

Creating checkpoints is easy. Open the CheckpointsTable data table by finding it in the Project Content or server script properties.

Add a new row to the table. You will have 5 columns:

- Position

This is a Core Object Reference of a dummy object to represent where the player torso will be spawned for this checkpoint.

- Trigger

This is a Core Object Reference of a trigger that will activate the checkpoint to be saved. Leave empty if not using a trigger.
The server script will connect the overlap or interact event based on the trigger's isInteractable property.

- Event

This is a string of an event name that will be connect to activate the checkpoint. See below on how to broadcast to the event.

- OnSpawnEffects

This is an Asset Reference to a template of effects that will be spawned when the players spawns at the checkpoint. Leave empty for no effects.
The template needs to be networked. Suggested to use a networked Client Context.

- OnActiveEffects

This is an Asset Reference to a template of effects that will be spawned when the players activates the checkpoint. Leave empty for no effects.
The template needs to be networked. Suggested to use a networked Client Context.

### Events

The server script has connected events that can be broadcasted to from other scripts to reset player's checkpoints or activate a checkpoint.

If a checkpoints in the data table has an Event string column value, then another script can broadcast it to activate the checkpoint.
The event needs a reference to the player activating the checkpoint, like so:

`Events.Broadcast("EventString", playerReference)`

If a player's checkpoint needs to be force set to a value or reset to default spawn point, then broadcast the "ForceSave" event.
The event needs a player reference and the desired row index of the CheckpointsTable data table. Any unsuitable index (such as 0) will reset checkpoints.
This will ignore the UsePriority property, so a player's checkpoint can be set to any index.

`Events.Broadcast("ForceSave", playerReference, indexNumber)`
