
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Tidy Tuesday - National Cheese Day

<!-- badges: start -->
<!-- badges: end -->

This week’s Tidy Tuesday data set is about cheese! 🧀

Cheese.com has information on over 1,000 cheeses from around the world.
This data set includes information on the name, country of origin,
texture, and type of milk used for each cheese.

## Cleaning the dataset

Tidy Tuesday provided two data tables to work with: `cheeses.csv` and
`cheese_details.csv`.

## Cheeses of the World

![](README_files/figure-gfm/cheese_map-1.png)<!-- -->

The most common types of descriptors for cheese texture in this data set
include creamy, smooth, firm, crumbly, soft.

<div id="vritnaojof" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vritnaojof table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#vritnaojof thead, #vritnaojof tbody, #vritnaojof tfoot, #vritnaojof tr, #vritnaojof td, #vritnaojof th {
  border-style: none;
}
&#10;#vritnaojof p {
  margin: 0;
  padding: 0;
}
&#10;#vritnaojof .gt_table {
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
&#10;#vritnaojof .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#vritnaojof .gt_title {
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
&#10;#vritnaojof .gt_subtitle {
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
&#10;#vritnaojof .gt_heading {
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
&#10;#vritnaojof .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vritnaojof .gt_col_headings {
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
&#10;#vritnaojof .gt_col_heading {
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
&#10;#vritnaojof .gt_column_spanner_outer {
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
&#10;#vritnaojof .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#vritnaojof .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#vritnaojof .gt_column_spanner {
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
&#10;#vritnaojof .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#vritnaojof .gt_group_heading {
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
&#10;#vritnaojof .gt_empty_group_heading {
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
&#10;#vritnaojof .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#vritnaojof .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#vritnaojof .gt_row {
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
&#10;#vritnaojof .gt_stub {
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
&#10;#vritnaojof .gt_stub_row_group {
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
&#10;#vritnaojof .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#vritnaojof .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#vritnaojof .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vritnaojof .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#vritnaojof .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#vritnaojof .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vritnaojof .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vritnaojof .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#vritnaojof .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#vritnaojof .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#vritnaojof .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vritnaojof .gt_footnotes {
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
&#10;#vritnaojof .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vritnaojof .gt_sourcenotes {
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
&#10;#vritnaojof .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vritnaojof .gt_left {
  text-align: left;
}
&#10;#vritnaojof .gt_center {
  text-align: center;
}
&#10;#vritnaojof .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#vritnaojof .gt_font_normal {
  font-weight: normal;
}
&#10;#vritnaojof .gt_font_bold {
  font-weight: bold;
}
&#10;#vritnaojof .gt_font_italic {
  font-style: italic;
}
&#10;#vritnaojof .gt_super {
  font-size: 65%;
}
&#10;#vritnaojof .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#vritnaojof .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#vritnaojof .gt_indent_1 {
  text-indent: 5px;
}
&#10;#vritnaojof .gt_indent_2 {
  text-indent: 10px;
}
&#10;#vritnaojof .gt_indent_3 {
  text-indent: 15px;
}
&#10;#vritnaojof .gt_indent_4 {
  text-indent: 20px;
}
&#10;#vritnaojof .gt_indent_5 {
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
<div id="nfjrevpdfa" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#nfjrevpdfa table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#nfjrevpdfa thead, #nfjrevpdfa tbody, #nfjrevpdfa tfoot, #nfjrevpdfa tr, #nfjrevpdfa td, #nfjrevpdfa th {
  border-style: none;
}
&#10;#nfjrevpdfa p {
  margin: 0;
  padding: 0;
}
&#10;#nfjrevpdfa .gt_table {
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
&#10;#nfjrevpdfa .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#nfjrevpdfa .gt_title {
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
&#10;#nfjrevpdfa .gt_subtitle {
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
&#10;#nfjrevpdfa .gt_heading {
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
&#10;#nfjrevpdfa .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#nfjrevpdfa .gt_col_headings {
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
&#10;#nfjrevpdfa .gt_col_heading {
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
&#10;#nfjrevpdfa .gt_column_spanner_outer {
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
&#10;#nfjrevpdfa .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#nfjrevpdfa .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#nfjrevpdfa .gt_column_spanner {
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
&#10;#nfjrevpdfa .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#nfjrevpdfa .gt_group_heading {
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
&#10;#nfjrevpdfa .gt_empty_group_heading {
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
&#10;#nfjrevpdfa .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#nfjrevpdfa .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#nfjrevpdfa .gt_row {
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
&#10;#nfjrevpdfa .gt_stub {
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
&#10;#nfjrevpdfa .gt_stub_row_group {
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
&#10;#nfjrevpdfa .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#nfjrevpdfa .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#nfjrevpdfa .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nfjrevpdfa .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#nfjrevpdfa .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#nfjrevpdfa .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#nfjrevpdfa .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nfjrevpdfa .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#nfjrevpdfa .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#nfjrevpdfa .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#nfjrevpdfa .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#nfjrevpdfa .gt_footnotes {
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
&#10;#nfjrevpdfa .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nfjrevpdfa .gt_sourcenotes {
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
&#10;#nfjrevpdfa .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#nfjrevpdfa .gt_left {
  text-align: left;
}
&#10;#nfjrevpdfa .gt_center {
  text-align: center;
}
&#10;#nfjrevpdfa .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#nfjrevpdfa .gt_font_normal {
  font-weight: normal;
}
&#10;#nfjrevpdfa .gt_font_bold {
  font-weight: bold;
}
&#10;#nfjrevpdfa .gt_font_italic {
  font-style: italic;
}
&#10;#nfjrevpdfa .gt_super {
  font-size: 65%;
}
&#10;#nfjrevpdfa .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#nfjrevpdfa .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#nfjrevpdfa .gt_indent_1 {
  text-indent: 5px;
}
&#10;#nfjrevpdfa .gt_indent_2 {
  text-indent: 10px;
}
&#10;#nfjrevpdfa .gt_indent_3 {
  text-indent: 15px;
}
&#10;#nfjrevpdfa .gt_indent_4 {
  text-indent: 20px;
}
&#10;#nfjrevpdfa .gt_indent_5 {
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
