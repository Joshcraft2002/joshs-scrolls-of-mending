# v2.1.0
- 1.21 support (Incompatible with other versions)

# v2.0.0
## Added
- 1.20.5/1.20.6 support (Incompatible with other versions)
- configuration menu
    - allows editing scroll use cooldown, scroll costs, and cost calculation type
- language support (only US English for now)
- mechanism to repair specific worn equipment
- now 3 types of scroll in addition to strengths/rarities. Each require Blank Parchment with different patterns, which are also crafted
    - Default scrolls need Blank Parchment and repair all equipment
    - Armor scrolls need Blank Parchment (Pattern: Armor) and repair all armor
    - Held scrolls need Blank Parchment (Pattern: Mainhand & Offhand Equipment) and repair held items
- now uses lantern load
## Changed
- now uses item component system
- switched from CTC to smithed datapack conventions
    - older items will no longer work and need to be recrafted
- lesser scroll seal is now based on iron nugget instead of gold ingot
- scrolls now based on paper instead of warped fungus on a stick
- scroll use costs are now calculated based on total durability instead of only damage
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