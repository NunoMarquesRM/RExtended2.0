-- Functions
require("prototypes.Tech.Tech-Control")
require("prototypes.Machinery.Machinery-Control")

-- Quality of Life
require("prototypes.Products.TreeRockEraser")
require("prototypes.Products.Pipes-Cover")

require("prototypes.Tech.Technology-QoL")


-- Categories
require("prototypes.Tech.Categories-Energy")
require("prototypes.Tech.Categories-Machinery")
require("prototypes.Tech.Categories-Railworld")
require("prototypes.Tech.Categories-C&R")

-- Energy
require("prototypes.Energy.Boilers")
require("prototypes.Energy.Accumulators")
require("prototypes.Energy.Solar-Panels")
require("prototypes.Energy.Poles")
require("prototypes.Energy.Steam-Engines")

-- Storage
require("prototypes.Storage.Big-storage-tank")
require("prototypes.Storage.Warehouses")

-- Machinery
require("prototypes.Machinery.Machinery")
require("prototypes.Machinery.Radar")
require("prototypes.Machinery.Mining-Drill")
require("prototypes.Machinery.Furnaces")
require("prototypes.Machinery.Assemblers")
require("prototypes.Machinery.Robots")
require("prototypes.Machinery.Compressor")
require("prototypes.Machinery.ChemicalMachine")
require("prototypes.Machinery.Refinery")
require("prototypes.Machinery.Air-Purification")

-- Products
require("prototypes.Products.C&R")
require("prototypes.Products.C&R-Fluids")

-- Military
require("prototypes.Military.Laser-Turret")
require("prototypes.Military.Equipment")

-- Tech
require("prototypes.Tech.Technology-Energy")
require("prototypes.Tech.Technology-Machinery")
require("prototypes.Tech.Technology-Robots")
require("prototypes.Tech.Technology-Military")

if mods["RERailworld"] then
    require("prototypes.Tech.Technology-Railworld")
end