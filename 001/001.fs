[<EntryPoint>]
let main argv =
    [1..999]
    |> List.filter (fun n -> n % 3 = 0 || n % 5 = 0)
    |> List.sum
    |> printfn "%i"
    0
