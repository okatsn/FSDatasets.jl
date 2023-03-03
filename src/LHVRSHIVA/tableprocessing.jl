"""
Convert `df1` with SEP_300, SEP_500, FIM_300, FIM_500, ...
"""
function FC_FIM_SEP(df_tag_pair::Pair{DataFrame,<:AbstractString}, 
                    additional_colname_tag::Pair...)
    df1, tag1 = df_tag_pair
    @chain df1 begin 
        stack(Cols(r"(SEP|FIM)")) # Stack by `:variable` SEP_\d+ and FIM_\d+, where \d+ will be moving window later.
        transform(:variable => ByRow(s -> FSDatasets.splitnamenumber(s, "_")) => ["SEPorFIM", "Moving window"]) # Separate SEP_\d+ or FIM_\d+ into two columns
        select(Not(:variable))
        unstack("SEPorFIM","value")
        insertcols("trial" => tag1, additional_colname_tag...)
    end
end
