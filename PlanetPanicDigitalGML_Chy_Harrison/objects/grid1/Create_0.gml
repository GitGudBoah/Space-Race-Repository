/// Create the grid
cell_width = 250;
cell_height = 250;

hcells = room_width div cell_width;
vcells = room_height div cell_height;

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add the walls
mp_grid_add_instances(global.grid, obj_wall, false);