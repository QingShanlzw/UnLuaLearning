// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "MyLuaUtils.generated.h"

/**
 * 
 */
UCLASS()
class HELLOUNLUA_API UMyLuaUtils : public UBlueprintFunctionLibrary
{
	GENERATED_BODY()
	UFUNCTION(BlueprintCallable)
	static int GetInt();
};
