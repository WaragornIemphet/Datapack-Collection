# Minecraft 26.1+ Datapack Collection

A collection of **7 custom Minecraft 26.1+ datapacks** (**555 `.mcfunction` files**, **14,711 lines of game logic**, **649 total files** including JSON configurations) built by **Waragorn Iemphet**.

This repository showcases modular game-systems engineering inside Minecraft's tick-driven command engine—ranging from multi-phase boss AI and wave raids to a 11,900+ line custom weapon framework.

---

## Featured Highlight: `sword/` — Light Bane Weapon Framework
**Scale:** `256` `.mcfunction` files · `11,926` lines of logic · Browse: **[sword/](sword/)**

The centerpiece of this collection is **Light Bane** (`akasword:` namespace), a multi-mode melee weapon system engineered with state machines, crosshair raycasting, custom input interception, and dynamic skill-buffing architecture:

- **Zero-Vanish Input Interception (`Q` Mode Cycling):** Intercepts dropped weapon entities using `PickupDelay:0s`, `Owner` binding, and instant `/tp` return to cycle between 3 combat stances without ever losing the item: **Salvation (0)**, **Purification (1)**, and **Eradication (2)**—paired with a persistent `lightbane_ui` actionbar HUD.
- **3-Phase FSM Ultimate — *Atonement* (`Purification` F-Skill):** Orchestrates a 20-sword hovering halo barrage (`atonehover` → `atoneaim` → `atonefly`), sequentially marks and freezes up to 50 targets within 64 blocks (`atonefreeze`), and triggers a synchronized detonation (`atonedetonate`).
- **90-Block Crosshair Raycasting — *Rite of Passage*:** Launches 4 hovering armor-stand projectiles along the player's look vector at 6.0 blocks/tick using iterative raycast steps (`roptimer`).
- **Dynamic Buff State — *Sacred Sanctuary* (Domain Expansion):** A 50-charge, 4-minute (`4,800`-tick) domain with a 240-second post-expiration cooldown that pulses every 4 seconds (`80` ticks) across 128 blocks and dynamically upgrades every other Light Bane skill (2× trigger damage, 6-slash *Trinity Cleave*, 8-sword *Rite of Passage*, enhanced *Final Testament*, and double-cast *Atonement*).
- **Additional Systems in `sword/`:** Includes the **Deceiver** weapon (`ei_` aerial dropkick, ground-slam stun timer, and point-blank `EXECUTE!` finisher), custom armor/crafting with strict `[!custom_data]` vanilla-item filtering, and Minecraft 1.21.2+ `equipment:{mainhand}` NBT syntax.

---

## Datapack Navigation & Overview

| Datapack | Files | Lines | Key Systems & Mechanics |
| :--- | :---: | :---: | :--- |
| **[sword/](sword/)** | 256 | 11,926 | **Featured:** Light Bane (3-mode weapon, raycasting, 3-phase FSM skills, Domain Expansion), Deceiver combo weapon, custom debuffs & crafting |
| **[luxurious/](luxurious/)** | 96 | 975 | Multi-weapon boss encounter (*Chay*) featuring custom axe/mace impacts, charge-handler state tracking, VFX, and a *Last Stand* phase |
| **[akaclone/](akaclone/)** | 89 | 826 | Multi-phase boss fight (*AkaClone*) with custom summoning/crafting triggers, Phase 2 transition, desperate state, and custom FX loop |
| **[bankbank/](bankbank/)** | 65 | 500 | Scripted boss encounter (*Bank*) with custom abilities (`bankfried`, `bankgrimace`, `bankmih`) and multi-part scheduled death dialogue |
| **[ratraid/](ratraid/)** | 24 | 240 | Multi-wave raid controller (`cccspawn1`–`cccspawn5`) with custom raid skills and clean raid-end state teardown |
| **[country/](country/)** | 21 | 157 | Custom boss/summon controller with split/divide mechanics, teleportation updates, and custom armor crafting (`craft_boots`, `craft_chest`) |
| **[senator/](senator/)** | 4 | 87 | Compact *Nanomachine* ability module with clean `load`/`tick` lifecycle hooks and custom UI feedback |

---

## Software Engineering Concepts Demonstrated

- **Finite State Machines (FSMs):** Phase transitions, multi-stage skill choreography (`atonestate`), and conditional buff overrides.
- **Discrete Tick-Loop Architecture:** Designing non-blocking cooldowns, timers, and periodic area pulses within Minecraft's 20 TPS execution model.
- **3D Vector Math & Raycasting:** Crosshair-aligned projectile traversal and AoE target filtering.
- **Modular Decomposition:** Organizing 14,700+ lines of logic into 555 single-responsibility `.mcfunction` modules across isolated datapack namespaces.

---

## Installation (Minecraft 26.1+)

1. Download or clone this repository.
2. Copy any individual datapack folder (e.g., `sword/`, `luxurious/`, `akaclone/`) into your world's `datapacks/` directory (`<world_folder>/datapacks/`).
3. Run `/reload` in-game to initialize the datapack.
