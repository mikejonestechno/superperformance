BeforeAll {
    Write-Host "try running something $($PSCommandPath.Replace('.tests.ps1','.ps1'))"
    . $PSCommandPath.Replace('.tests.ps1','.ps1')
}

Describe "FutureSuper" {
    
    It "returns date 29 May 2020" {
        (Get-SuperPerformance).date.ToUniversalTime() | Should -Be (Get-Date -Date "2020-05-29 00:00:00Z").ToUniversalTime()
    }   
}