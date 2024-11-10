QBShared = QBShared or {}
QBShared.Vehicles = QBShared.Vehicles or {}

local Vehicles = {
    -- No vehicle here because why not ;)
}
local Imported = {
    -- List of all my imported unbranded vehicle
}

for i = 1, #Vehicles do
    QBShared.Vehicles[Vehicles[i].model] = {
        spawncode = Vehicles[i].model,
        name = Vehicles[i].name,
        brand = Vehicles[i].brand,
        model = Vehicles[i].model,
        price = Vehicles[i].price,
        category = Vehicles[i].category,
        hash = joaat(Vehicles[i].model),
        type = Vehicles[i].type,
        shop = Vehicles[i].shop
    }
end

for i = 1, #Imported do
    QBShared.Vehicles[Imported[i].model] = {
        spawncode = Imported[i].model,
        name = Imported[i].name,
        brand = Imported[i].brand,
        model = Imported[i].model,
        price = Imported[i].price,
        category = Imported[i].category,
        hash = joaat(Imported[i].model),
        type = Imported[i].type,
        shop = Imported[i].shop
    }
end
