$Location="northeurope"
$ResourceGroupName="web-grp"
$AppServicePlanName="learningplan1127"
New-AzResourceGroup -Name $ResourceGroupName -Location $Location 

New-AzAppservicePlan -ResourceGroupName $ResourceGroupName -Name $AppServicePlanName `
-Location $Location -Tier Free -Linux

$AppName ="learningapp1127"

New-AzWebApp -ResourceGroupName $ResourceGroupName -Location $Location -Name $AppName `
-AppServicePlan $AppServicePlanName