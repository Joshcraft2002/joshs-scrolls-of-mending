# v1.5.0
## Added
- 1.20.5/1.20.6 support (Incompatible with other versions)
- configuration menu
    - allows editing scroll use cooldown, scroll costs, and cost calculation type
- language support (only US English for now)
- mechanism to repair specific worn equipment (no way to change in-game yet)
- now uses lantern load
## Changed
- now uses item component system
- switched from CTC to smithed datapack conventions
    - older items will no longer work and need to be recrafted
- lesser scroll seal is now based on iron nugget instead of gold ingot
- scrolls now based on paper instead of warped fungus on a stick
- scroll use costs are now calculated based on total gear durability instead of only damage
    - more accurate to scrolls repairing a % of total durability
    - legacy calculation can be enabled via configuration
- text color (rarity) change
    - lesser seal - common
    - seal - uncommon
    - greater seal - rare
## Fixes
- scrolls not taking away exact experience cost on use

# v1.4.0
## Fixes
- Fixed datapack for 1.20
## Removed
- Support for the addon The Cursed Messenger