- dashboard: schooldashboard
  title: Schooldashboard

  layout: newspaper
  elements:
  - title: Absences By Zip Code
    name: Absences By Zip Code
    model: ccpsews
    explore: attendance_detail
    type: looker_map
    fields:
    - attendance_detail.avg_absent_days_per_student
    - school.zip
    filters:
      attendance_detail.end_year: '2019'
    sorts:
    - attendance_detail.avg_absent_days_per_student desc
    limit: 500
    query_timezone: America/New_York
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 13
    col: 0
    width: 10
    height: 6
  - title: 'Attendance Warning: Students > 5 Absences'
    name: 'Attendance Warning: Students > 5 Absences'
    model: ccpsews
    explore: attendance_detail
    type: table
    fields:
    - individual.first_name
    - individual.last_name
    - attendance_detail.total_absent_days
    - attendance_detail.total_un_excused_days
    - school.name
    - school.type
    filters:
      attendance_detail.total_un_excused_days: ">5"
      attendance_detail.end_year: '2019'
    sorts:
    - individual.first_name
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      school.name: School Name
      school.type: School Type
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting:
    - type: between
      value:
      - 4
      - 10
      background_color: "#fff916"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - attendance_detail.total_un_excused_days
    - type: greater than
      value: 9
      background_color: "#ce2020"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - attendance_detail.total_un_excused_days
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 13
    col: 10
    width: 14
    height: 6
  - title: Top 5 High Schools With The Most Absences
    name: Top 5 High Schools With The Most Absences
    model: ccpsews
    explore: attendance_detail
    type: looker_column
    fields:
    - attendance_detail.total_absent_days
    - school.name
    - attendance_detail.total_un_excused_days
    filters:
      attendance_detail.end_year: '2019'
      location.location_type: H
    sorts:
    - attendance_detail.total_absent_days desc
    limit: 5
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting:
    - type: between
      value:
      - 4
      - 10
      background_color: "#fff916"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields: []
    - type: greater than
      value: 9
      background_color: "#ce2020"
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields: []
    row: 25
    col: 0
    width: 24
    height: 7
  - title: Total Incidents By School
    name: Total Incidents By School
    model: ccpsews
    explore: behavior_detail
    type: table
    fields:
    - behavior_detail.count
    - school.name
    filters:
      behavior_detail.end_year: '2019'
    sorts:
    - behavior_detail.count desc
    limit: 500
    total: true
    dynamic_fields:
    - table_calculation: incidents_percentage
      label: Incidents Percentage
      expression: "${behavior_detail.count} /sum(${behavior_detail.count})"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      behavior_detail.count: Total Incidents
      school.name: School Name
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Enrollment By Category
    name: Enrollment By Category
    model: ccpsews
    explore: enrollment
    type: looker_donut_multiples
    fields:
    - enrollment.TotalEnrollment
    - enrollment.TotalGifted
    - enrollment.TotalSpecialED
    limit: 500
    dynamic_fields:
    - table_calculation: regular_ed
      label: Regular Ed
      expression: "${enrollment.TotalEnrollment} - (${enrollment.TotalGifted} + ${enrollment.TotalSpecialED})"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    show_value_labels: true
    font_size: 11
    hide_legend: false
    colors:
    - "#265780"
    - "#D98541"
    - "#C53DCC"
    - "#33992E"
    - "#36B38D"
    - "#A2BF39"
    - "#5A3DCC"
    - "#8a0f3d"
    - "#ff7aa3"
    - "#2d89bd"
    - "#8f09b0"
    - "#d94141"
    series_colors: {}
    series_labels:
      enrollment.TotalEnrollment: Total Enrollment
      enrollment.TotalGifted: Gifted
      enrollment.TotalSpecialED: Special Ed
    series_types: {}
    hidden_fields:
    - enrollment.TotalEnrollment
    listen: {}
    row: 3
    col: 9
    width: 8
    height: 4
  - title: Enrollment By Gender
    name: Enrollment By Gender
    model: ccpsews
    explore: enrollment
    type: looker_pie
    fields:
    - individual.gender
    - enrollment.TotalEnrollment
    sorts:
    - enrollment.TotalEnrollment desc
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
    colors:
    - "#5245ed"
    - "#ed6168"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    series_colors: {}
    series_labels:
      enrollment.count: Total Enrollment
      student_gender_percentage: Student Percentage
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: true
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 3
    col: 17
    width: 7
    height: 4
  - title: Enrollment By District
    name: Enrollment By District
    model: ccpsews
    explore: enrollment
    type: single_value
    fields:
    - enrollment.TotalEnrollment
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: "#000000"
    show_single_value_title: true
    single_value_title: Total Enrollment
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Dual Enrollment
    name: Dual Enrollment
    model: ccpsews
    explore: v_dual_enrollment
    type: single_value
    fields:
    - v_dual_enrollment.student_courses
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Dual Enrollment
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      school.name: School Name
      v_dual_enrollment.count: Total Enrollment
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 0
    col: 13
    width: 4
    height: 3
  - title: Enrollment By Race
    name: Enrollment By Race
    model: ccpsews
    explore: enrollment
    type: looker_pie
    fields:
    - individual.race_ethnicity
    - enrollment.TotalEnrollment
    sorts:
    - enrollment.TotalEnrollment desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: race_percentage
      label: Race Percentage
      expression: "${enrollment.TotalEnrollment} / sum(${enrollment.TotalEnrollment})"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labVal
    colors:
    - "#5245ed"
    - "#ed6168"
    - "#1ea8df"
    - "#353b49"
    - "#49cec1"
    - "#b3a0dd"
    - "#db7f2a"
    - "#706080"
    - "#a2dcf3"
    - "#776fdf"
    - "#e9b404"
    - "#635189"
    series_colors: {}
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: enrollment.count
        name: Enrollment Count
        axisId: enrollment.count
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: race_percentage
        name: Race Percentage
        axisId: race_percentage
    hidden_fields:
    - race_percentage
    listen: {}
    row: 3
    col: 0
    width: 9
    height: 4
  - title: Gifted Students
    name: Gifted Students
    model: ccpsews
    explore: enrollment
    type: single_value
    fields:
    - enrollment.TotalEnrollment
    filters:
      enrollment.gifted_talented: '1'
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: "#000000"
    show_single_value_title: true
    single_value_title: Gifted Students
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 4
    width: 5
    height: 3
  - title: Special Ed By District
    name: Special Ed By District
    model: ccpsews
    explore: enrollment
    type: single_value
    fields:
    - enrollment.special_ed_status
    - enrollment.TotalEnrollment
    filters:
      enrollment.special_ed_status: Y
    sorts:
    - enrollment.TotalEnrollment desc
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: "#000000"
    show_single_value_title: true
    single_value_title: Special Ed Students
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 0
    col: 9
    width: 4
    height: 3
  - title: Enrollment By Race and School
    name: Enrollment By Race and School
    model: ccpsews
    explore: enrollment
    type: table
    fields:
    - enrollment.count
    - individual.race_ethnicity
    - school.name
    pivots:
    - individual.race_ethnicity
    sorts:
    - individual.race_ethnicity 0
    - race_percentage desc 0
    limit: 500
    column_limit: 50
    total: true
    row_total: right
    dynamic_fields:
    - table_calculation: race_percentage
      label: Race Percentage
      expression: "${enrollment.count} / sum(pivot_row( ${enrollment.count}))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labVal
    series_types: {}
    series_colors:
      enrollment.count: "#8abf73"
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: enrollment.count
        name: Enrollment Count
        axisId: enrollment.count
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: race_percentage
        name: Race Percentage
        axisId: race_percentage
    hidden_fields:
    listen: {}
    row: 7
    col: 0
    width: 24
    height: 6
  - title: Enrollment By AP Courses
    name: Enrollment By AP Courses
    model: ccpsews
    explore: v_enrollment_in_apcourse
    type: single_value
    fields:
    - v_enrollment_in_apcourse.student_courses
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Enrollment In AP Courses
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      school.name: School Name
      v_enrollment_in_apcourse.count: Total Enrollment
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
    series_types: {}
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 0
    col: 17
    width: 7
    height: 3
  - title: Total Absences By School
    name: Total Absences By School
    model: ccpsews
    explore: attendance_detail
    type: table
    fields:
    - attendance_detail.count
    - school.name
    filters:
      attendance_detail.end_year: '2019'
    sorts:
    - attendance_detail.count desc
    limit: 500
    total: true
    dynamic_fields:
    - table_calculation: attendance_percentage
      label: Attendance Percentage
      expression: "${attendance_detail.count}/ sum( ${attendance_detail.count})"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    series_labels:
      attendance_detail.count: Total Absent
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 32
    col: 0
    width: 24
    height: 7
