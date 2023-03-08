"""
Convert `df1` with columns "SEP_300", "SEP_500", "FIM_300", "FIM_500"... to a DataFrame of "SEP", "FIM", "moving window"
"""
function FC_FIM_SEP(df_tag_pair::Pair{DataFrame,<:AbstractString},
                    additional_colname_tag::Pair...)
    df1, tag1 = df_tag_pair
    @chain df1 begin
        stack(Cols(r"(SEP|FIM)")) # Stack by `:variable` SEP_\d+ and FIM_\d+, where \d+ will be moving window later.
        transform(:variable => ByRow(s -> FSDatasets.splitnamenumber(s, "_")) => ["SEPorFIM", "moving window"]) # Separate SEP_\d+ or FIM_\d+ into two columns
        select(Not(:variable)) # the original :variable is equivalent to the two new columns "SEPorFIM", "moving window"
        unstack("SEPorFIM","value") # unstack to two column: SEP, FIM
        insertcols("trial" => tag1, additional_colname_tag...)
    end
end
