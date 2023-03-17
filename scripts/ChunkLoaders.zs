/* scripts made by alterNERDtive
for Iskall85's Vaulthunters */

craftingTable.remove(<item:chunkloaders:basic_chunk_loader>);
craftingTable.remove(<item:chunkloaders:advanced_chunk_loader>);
craftingTable.remove(<item:chunkloaders:ultimate_chunk_loader>);

craftingTable.addShaped("chunk_loader_basic", <item:chunkloaders:basic_chunk_loader>, [
    [<item:the_vault:perfect_larimar>, <item:the_vault:chromatic_iron_block>, <item:the_vault:perfect_larimar>],
    [<item:the_vault:chromatic_iron_block>, <item:the_vault:gem_pog>, <item:the_vault:chromatic_iron_block>],
    [<item:the_vault:perfect_larimar>, <item:the_vault:chromatic_steel_block>, <item:the_vault:perfect_larimar>]
]);

craftingTable.addShaped("chunk_loader_basic_from_single", <item:chunkloaders:basic_chunk_loader>, [
    [<item:chunkloaders:single_chunk_loader>, <item:chunkloaders:single_chunk_loader>, <item:chunkloaders:single_chunk_loader>],
    [<item:chunkloaders:single_chunk_loader>, <item:chunkloaders:single_chunk_loader>, <item:chunkloaders:single_chunk_loader>],
    [<item:chunkloaders:single_chunk_loader>, <item:chunkloaders:single_chunk_loader>, <item:chunkloaders:single_chunk_loader>]
]);

craftingTable.addShaped("chunk_loader_advanced", <item:chunkloaders:advanced_chunk_loader>, [
    [<item:the_vault:extraordinary_larimar>, <item:the_vault:chromatic_steel_block>, <item:the_vault:extraordinary_larimar>],
    [<item:the_vault:chromatic_steel_block>, <item:the_vault:echo_pog>, <item:the_vault:chromatic_steel_block>],
    [<item:the_vault:extraordinary_larimar>, <item:the_vault:chromatic_steel_block>, <item:the_vault:extraordinary_larimar>]
]);

craftingTable.addShaped("chunk_loader_ultimate", <item:chunkloaders:ultimate_chunk_loader>, [
    [<item:the_vault:gem_pog>, <item:the_vault:black_chromatic_steel_block>, <item:the_vault:gem_pog>],
    [<item:the_vault:black_chromatic_steel_block>, <item:the_vault:omega_pog>, <item:the_vault:black_chromatic_steel_block>],
    [<item:the_vault:gem_pog>, <item:the_vault:black_chromatic_steel_block>, <item:the_vault:gem_pog>]
]);
