--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

---@type MyFirst_C
local M = UnLua.Class()

--function M:Initialize(Initializer)
--end

--function M:PreConstruct(IsDesignTime)
--end

function M:Construct()
   -- print("Hello,UnLua!" .. UE4.UMyLuaUtils.GetInt())
   self.btnTest.OnPressed:Add(self,M.OnClickTest)
    self:ShowBut()
    
 end
function M:OnClickTest()
   -- Blueprint'/Game/BluePrints/Actor1BP.Actor1BP'
    local World = self:GetWorld();
    if not World then
        return
    end
    print("okk1")
    local ActorClass = UE4.UClass.Load("Blueprint'/Game/BluePrints/Actor1BP.Actor1BP'")
    print("okk2")
    local Actor = World:SpawnActor(ActorClass, UE4.FVector(),UE4.ESpawnActorCollisionHandlingMethod.AlwaysSpawn,self,self,"")  
    print("okk3")
    self.Actor =Actor
    print("okk4")
    print("MyBaseActoris:" ..  self.Actor.Name)  
end    


--function M:Tick(MyGeometry, InDeltaTime)
--end

return M
