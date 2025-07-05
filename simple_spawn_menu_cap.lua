--------------------------------------------------
-- CONFIGURAÇÃO DO SPAWN DE CAP VIA MENU
-- Grindmetal / GPT Functions
-- https://github.com/GrInDmEtAl/MENU_CAP
--------------------------------------------------

-- Cria o objeto SPAWN com base no grupo no Mission Editor
local Spawn_CAP_1 = SPAWN:New("Spawn CAP 1")

-- Guarda a última instância do grupo
local Spawn_CAP_Group_1 = nil

-- Função para respawnar o grupo CAP
local function Respawn_CAP_1()
    if not Spawn_CAP_Group_1 or not Spawn_CAP_Group_1:IsAlive() then
        Spawn_CAP_Group_1 = Spawn_CAP_1:Spawn()
        MESSAGE:New("CAP 1 decolou!", 10):ToAll()
    else
        MESSAGE:New("CAP 1 ainda está ativo. Aguarde ou destrua para respawnar.", 10):ToAll()
    end
end

-- Adiciona o menu F10 para o CAP
missionCommands.addCommand("Spawn CAP 1", nil, Respawn_CAP_1)
