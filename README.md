
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Tidy Tuesday - National Cheese Day

<!-- badges: start -->
<!-- badges: end -->

This week’s Tidy Tuesday data set is about cheese! 🧀

Cheese.com has information on over 1,000 cheeses from around the world.
This data set includes information on the name, country of origin,
texture, and type of milk used for each cheese.

Tidy Tuesday provided two data tables to work with: `cheeses.csv` and
`cheese_details.csv`. `janitor::compare_df_cols()` was used to compare
the two data sets and determine that `cheese_details.csv` didn’t have
any additional information that I wanted to use that weren’t already
present in `cheeses.csv`.

    #> Rows: 1187 Columns: 19
    #> ── Column specification ────────────────────────────────────────────────────────
    #> Delimiter: ","
    #> chr (17): cheese, url, milk, country, region, family, type, fat_content, cal...
    #> lgl  (2): vegetarian, vegan
    #> 
    #> ℹ Use `spec()` to retrieve the full column specification for this data.
    #> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
    #> Rows: 1187 Columns: 18
    #> ── Column specification ────────────────────────────────────────────────────────
    #> Delimiter: ","
    #> chr (16): url, milk, country, region, family, type, fat_content, calcium_con...
    #> lgl  (2): vegetarian, vegan
    #> 
    #> ℹ Use `spec()` to retrieve the full column specification for this data.
    #> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

<div id="cexurmzsrz" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#cexurmzsrz table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#cexurmzsrz thead, #cexurmzsrz tbody, #cexurmzsrz tfoot, #cexurmzsrz tr, #cexurmzsrz td, #cexurmzsrz th {
  border-style: none;
}
&#10;#cexurmzsrz p {
  margin: 0;
  padding: 0;
}
&#10;#cexurmzsrz .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#cexurmzsrz .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#cexurmzsrz .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#cexurmzsrz .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#cexurmzsrz .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#cexurmzsrz .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#cexurmzsrz .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#cexurmzsrz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#cexurmzsrz .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#cexurmzsrz .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#cexurmzsrz .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#cexurmzsrz .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#cexurmzsrz .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#cexurmzsrz .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#cexurmzsrz .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cexurmzsrz .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#cexurmzsrz .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#cexurmzsrz .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#cexurmzsrz .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cexurmzsrz .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#cexurmzsrz .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cexurmzsrz .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#cexurmzsrz .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cexurmzsrz .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#cexurmzsrz .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#cexurmzsrz .gt_left {
  text-align: left;
}
&#10;#cexurmzsrz .gt_center {
  text-align: center;
}
&#10;#cexurmzsrz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#cexurmzsrz .gt_font_normal {
  font-weight: normal;
}
&#10;#cexurmzsrz .gt_font_bold {
  font-weight: bold;
}
&#10;#cexurmzsrz .gt_font_italic {
  font-style: italic;
}
&#10;#cexurmzsrz .gt_super {
  font-size: 65%;
}
&#10;#cexurmzsrz .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#cexurmzsrz .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#cexurmzsrz .gt_indent_1 {
  text-indent: 5px;
}
&#10;#cexurmzsrz .gt_indent_2 {
  text-indent: 10px;
}
&#10;#cexurmzsrz .gt_indent_3 {
  text-indent: 15px;
}
&#10;#cexurmzsrz .gt_indent_4 {
  text-indent: 20px;
}
&#10;#cexurmzsrz .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="3" class="gt_heading gt_title gt_font_normal gt_bottom_border" style><strong>Comparing Two Dataframes</strong></td>
    </tr>
    &#10;    <tr class="gt_col_headings gt_spanner_row">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="2" colspan="1" scope="col" id="Column Name">Column Name</th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" scope="colgroup" id="Data Source">
        <span class="gt_column_spanner">Data Source</span>
      </th>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="cheeses.csv">cheeses.csv</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="cheese_details.csv">cheese_details.csv</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="column_name" class="gt_row gt_left">alt_spellings</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">aroma</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">calcium_content</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">cheese</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">NA</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">color</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">country</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">family</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">fat_content</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">flavor</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">milk</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">producers</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">region</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">rind</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">row_id</td>
<td headers="raw_cheese" class="gt_row gt_left">integer</td>
<td headers="raw_cheese_details" class="gt_row gt_left">integer</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">synonyms</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">texture</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">type</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">url</td>
<td headers="raw_cheese" class="gt_row gt_left">character</td>
<td headers="raw_cheese_details" class="gt_row gt_left">character</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">vegan</td>
<td headers="raw_cheese" class="gt_row gt_left">logical</td>
<td headers="raw_cheese_details" class="gt_row gt_left">logical</td></tr>
    <tr><td headers="column_name" class="gt_row gt_left">vegetarian</td>
<td headers="raw_cheese" class="gt_row gt_left">logical</td>
<td headers="raw_cheese_details" class="gt_row gt_left">logical</td></tr>
  </tbody>
  &#10;  
</table>
</div>

## Cheeses of the World

I wanted to know how many different cheeses were produced in each
country, however the country column in the dataset had anywhere from one
to eight countries listed. We need to create a dataframe that lists the
country and a single country, so cheeses that have multiple countries
listed would lhave multiple rows in the new dataframe.

![](README_files/figure-gfm/cheese_map-1.png)<!-- -->

The most common types of descriptors for cheese texture in this data set
include creamy, smooth, firm, crumbly, soft.

<div id="kkfwahpdrv" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#kkfwahpdrv table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#kkfwahpdrv thead, #kkfwahpdrv tbody, #kkfwahpdrv tfoot, #kkfwahpdrv tr, #kkfwahpdrv td, #kkfwahpdrv th {
  border-style: none;
}
&#10;#kkfwahpdrv p {
  margin: 0;
  padding: 0;
}
&#10;#kkfwahpdrv .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#kkfwahpdrv .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#kkfwahpdrv .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#kkfwahpdrv .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#kkfwahpdrv .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#kkfwahpdrv .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#kkfwahpdrv .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#kkfwahpdrv .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#kkfwahpdrv .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#kkfwahpdrv .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#kkfwahpdrv .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#kkfwahpdrv .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#kkfwahpdrv .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#kkfwahpdrv .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#kkfwahpdrv .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#kkfwahpdrv .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#kkfwahpdrv .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#kkfwahpdrv .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#kkfwahpdrv .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#kkfwahpdrv .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#kkfwahpdrv .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#kkfwahpdrv .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#kkfwahpdrv .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#kkfwahpdrv .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#kkfwahpdrv .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#kkfwahpdrv .gt_left {
  text-align: left;
}
&#10;#kkfwahpdrv .gt_center {
  text-align: center;
}
&#10;#kkfwahpdrv .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#kkfwahpdrv .gt_font_normal {
  font-weight: normal;
}
&#10;#kkfwahpdrv .gt_font_bold {
  font-weight: bold;
}
&#10;#kkfwahpdrv .gt_font_italic {
  font-style: italic;
}
&#10;#kkfwahpdrv .gt_super {
  font-size: 65%;
}
&#10;#kkfwahpdrv .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#kkfwahpdrv .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#kkfwahpdrv .gt_indent_1 {
  text-indent: 5px;
}
&#10;#kkfwahpdrv .gt_indent_2 {
  text-indent: 10px;
}
&#10;#kkfwahpdrv .gt_indent_3 {
  text-indent: 15px;
}
&#10;#kkfwahpdrv .gt_indent_4 {
  text-indent: 20px;
}
&#10;#kkfwahpdrv .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_title gt_font_normal" style><strong>Most Popular Cheese Descriptions</strong></td>
    </tr>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>Number of times each phrase shows up in the data set</td>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Texture">Texture</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number of References">Number of References</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="texture" class="gt_row gt_left">Creamy</td>
<td headers="count" class="gt_row gt_right">605</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Smooth</td>
<td headers="count" class="gt_row gt_right">311</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Firm</td>
<td headers="count" class="gt_row gt_right">249</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Crumbly</td>
<td headers="count" class="gt_row gt_right">226</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Soft</td>
<td headers="count" class="gt_row gt_right">125</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Dense</td>
<td headers="count" class="gt_row gt_right">99</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Buttery</td>
<td headers="count" class="gt_row gt_right">82</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Open</td>
<td headers="count" class="gt_row gt_right">80</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Supple</td>
<td headers="count" class="gt_row gt_right">64</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Compact</td>
<td headers="count" class="gt_row gt_right">63</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Spreadable</td>
<td headers="count" class="gt_row gt_right">54</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Soft-Ripened</td>
<td headers="count" class="gt_row gt_right">48</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Flaky</td>
<td headers="count" class="gt_row gt_right">40</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Grainy</td>
<td headers="count" class="gt_row gt_right">38</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Elastic</td>
<td headers="count" class="gt_row gt_right">29</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Runny</td>
<td headers="count" class="gt_row gt_right">28</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Springy</td>
<td headers="count" class="gt_row gt_right">27</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Dry</td>
<td headers="count" class="gt_row gt_right">23</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Crystalline</td>
<td headers="count" class="gt_row gt_right">19</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Brittle</td>
<td headers="count" class="gt_row gt_right">14</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Chalky</td>
<td headers="count" class="gt_row gt_right">14</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Fluffy</td>
<td headers="count" class="gt_row gt_right">14</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Stringy</td>
<td headers="count" class="gt_row gt_right">11</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Semi Firm</td>
<td headers="count" class="gt_row gt_right">10</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Chewy</td>
<td headers="count" class="gt_row gt_right">9</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Close</td>
<td headers="count" class="gt_row gt_right">7</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Gooey</td>
<td headers="count" class="gt_row gt_right">5</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Oily</td>
<td headers="count" class="gt_row gt_right">3</td></tr>
    <tr><td headers="texture" class="gt_row gt_left">Sticky</td>
<td headers="count" class="gt_row gt_right">1</td></tr>
  </tbody>
  &#10;  
</table>
</div>
<div id="vhvufdnius" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vhvufdnius table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#vhvufdnius thead, #vhvufdnius tbody, #vhvufdnius tfoot, #vhvufdnius tr, #vhvufdnius td, #vhvufdnius th {
  border-style: none;
}
&#10;#vhvufdnius p {
  margin: 0;
  padding: 0;
}
&#10;#vhvufdnius .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#vhvufdnius .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#vhvufdnius .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#vhvufdnius .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#vhvufdnius .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#vhvufdnius .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#vhvufdnius .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#vhvufdnius .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#vhvufdnius .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#vhvufdnius .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#vhvufdnius .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#vhvufdnius .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#vhvufdnius .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#vhvufdnius .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#vhvufdnius .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vhvufdnius .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#vhvufdnius .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#vhvufdnius .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#vhvufdnius .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vhvufdnius .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#vhvufdnius .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vhvufdnius .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#vhvufdnius .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vhvufdnius .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#vhvufdnius .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vhvufdnius .gt_left {
  text-align: left;
}
&#10;#vhvufdnius .gt_center {
  text-align: center;
}
&#10;#vhvufdnius .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#vhvufdnius .gt_font_normal {
  font-weight: normal;
}
&#10;#vhvufdnius .gt_font_bold {
  font-weight: bold;
}
&#10;#vhvufdnius .gt_font_italic {
  font-style: italic;
}
&#10;#vhvufdnius .gt_super {
  font-size: 65%;
}
&#10;#vhvufdnius .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#vhvufdnius .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#vhvufdnius .gt_indent_1 {
  text-indent: 5px;
}
&#10;#vhvufdnius .gt_indent_2 {
  text-indent: 10px;
}
&#10;#vhvufdnius .gt_indent_3 {
  text-indent: 15px;
}
&#10;#vhvufdnius .gt_indent_4 {
  text-indent: 20px;
}
&#10;#vhvufdnius .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_title gt_font_normal" style><strong>Most Popular Milk Types</strong></td>
    </tr>
    <tr class="gt_heading">
      <td colspan="2" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>Number of cheeses using each milk.</td>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Milk Type">Milk Type</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Number of Cheeses">Number of Cheeses</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="milk" class="gt_row gt_left">Cow</td>
<td headers="count" class="gt_row gt_right">777</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Goat</td>
<td headers="count" class="gt_row gt_right">267</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Sheep</td>
<td headers="count" class="gt_row gt_right">194</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Water Buffalo</td>
<td headers="count" class="gt_row gt_right">21</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Buffalo</td>
<td headers="count" class="gt_row gt_right">10</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Plant-Based</td>
<td headers="count" class="gt_row gt_right">6</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Yak</td>
<td headers="count" class="gt_row gt_right">4</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Camel</td>
<td headers="count" class="gt_row gt_right">1</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Donkey</td>
<td headers="count" class="gt_row gt_right">1</td></tr>
    <tr><td headers="milk" class="gt_row gt_left">Moose</td>
<td headers="count" class="gt_row gt_right">1</td></tr>
  </tbody>
  &#10;  
</table>
</div>
