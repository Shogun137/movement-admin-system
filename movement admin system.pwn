/* 



							[̲̅a][̲̅e][̲̅s][̲̅t][̲̅h][̲̅e][̲̅t][̲̅i][̲̅c]



*/

//-----[ Movement Function ]-----
GetXYLeftOfPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x - (distance * floatsin(-A-90.0,degrees));
	y2 = y - (distance * floatcos(-A-90.0,degrees));
}
GetXYRightOfPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x - (distance * floatsin(-A+90.0,degrees));
	y2 = y - (distance * floatcos(-A+90.0,degrees));
}
GetXYInFrontOfPoint11(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x + (distance * floatsin(-A,degrees));
	y2 = y + (distance * floatcos(-A,degrees));
}
GetXYBehindPoint(Float:x,Float:y,&Float:x2,&Float:y2,Float:A,Float:distance)
{
	x2 = x - (distance * floatsin(-A,degrees));
	y2 = y - (distance * floatcos(-A,degrees));
}


//-----[ Movement Command ]-----
CMD:up(playerid,params[])
{
    new Float:cDistance = 2.0;
	if(PlayerData[playerid][pAdmin] < 2)
    if(!isnull(params))
    {
        cDistance = floatstr(params);
    }
    new Float:cPos[3];
    GetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
    SetPlayerPos(playerid,cPos[0],cPos[1],(cPos[2]+cDistance));
	return 1;
}

CMD:lt(playerid,params[])
{
	new Float:cDistance = 2.0;
	if(PlayerData[playerid][pAdmin] < 2)
	if(!isnull(params))
    {
        cDistance = floatstr(params);
    }
    new Float:cPos[4];
    GetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
    GetPlayerFacingAngle(playerid,cPos[3]);
    GetXYLeftOfPoint(cPos[0],cPos[1],cPos[0],cPos[1],cPos[3],cDistance);
    SetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
	return 1;
}

CMD:rt(playerid,params[])
{
    new Float:cDistance = 2.0;
	if(PlayerData[playerid][pAdmin] < 2)
    if(!isnull(params))
    {
        cDistance = floatstr(params);
    }
    new Float:cPos[4];
    GetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
    GetPlayerFacingAngle(playerid,cPos[3]);
    GetXYRightOfPoint(cPos[0],cPos[1],cPos[0],cPos[1],cPos[3],cDistance);
    SetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
	return 1;
}

CMD:ft(playerid,params[])
{  
    new Float:cDistance = 2.0;
	if(PlayerData[playerid][pAdmin] < 2)
    if(!isnull(params))
    {
        cDistance = floatstr(params);
    }
    new Float:cPos[4];
    GetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
    GetPlayerFacingAngle(playerid,cPos[3]);
    GetXYInFrontOfPoint11(cPos[0],cPos[1],cPos[0],cPos[1],cPos[3],cDistance);
    SetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
	return 1;
}

CMD:bt(playerid,params[])
{
    new Float:cDistance = 2.0;
	if(PlayerData[playerid][pAdmin] < 2)
    if(!isnull(params))
    {
        cDistance = floatstr(params);
    }
    new Float:cPos[4];
    GetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
    GetPlayerFacingAngle(playerid,cPos[3]);
    GetXYBehindPoint(cPos[0],cPos[1],cPos[0],cPos[1],cPos[3],cDistance);
    SetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
	return 1;
}

CMD:dn(playerid,params[])
{
    new Float:cDistance = 2.0;
	if(PlayerData[playerid][pAdmin] < 2)
    if(!isnull(params))
    {
        cDistance = floatstr(params);
    }
    new Float:cPos[3];
    GetPlayerPos(playerid,cPos[0],cPos[1],cPos[2]);
    SetPlayerPos(playerid,cPos[0],cPos[1],(cPos[2]-cDistance));
	return 1;
}