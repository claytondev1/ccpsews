- dashboard: district_stats
  title: District Overview
  layout: newspaper
  embed_style:
    background_color: "#fefefe"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Total Employees by Full/Part Time
    title: Total Employees by Full/Part Time
    model: ccpsews
    explore: employee
    type: table
    fields:
    - employee.count
    - class.part_time_vs_full_time
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: P
    sorts:
    - employee.count desc
    limit: 500
    query_timezone: America/New_York
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
    row: 9
    col: 0
    width: 8
    height: 6
  - name: Employees by Gender and Full/Part Time
    title: Employees by Gender and Full/Part Time
    model: ccpsews
    explore: employee
    type: looker_column
    fields:
    - employee.unique_employee
    - class.part_time_vs_full_time
    - employee.gender
    pivots:
    - employee.gender
    sorts:
    - employee.gender desc
    - employee.unique_employee desc 0
    limit: 500
    query_timezone: America/New_York
    stacking: normal
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
    value_labels: legend
    label_type: labPer
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    row: 9
    col: 16
    width: 8
    height: 6
  - name: Total Teachers - District
    title: Total Teachers - District
    model: ccpsews
    explore: employee
    type: single_value
    fields:
    - employee.unique_employee
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: P
      class.is_teacher: 'Yes'
    sorts:
    - employee.unique_employee desc
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: "#2f7938"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Total Teachers
    row: 0
    col: 8
    width: 4
    height: 3
  - name: Vacant Positions by District
    title: Vacant Positions by District
    model: ccpsews
    explore: vacant_positions
    type: single_value
    fields:
    - vacant_positions.count
    limit: 500
    query_timezone: America/New_York
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
    single_value_title: Vacant Positions
    row: 0
    col: 12
    width: 4
    height: 3
  - name: Total Certified Employees - District
    title: Total Certified Employees - District
    model: ccpsews
    explore: employee
    type: single_value
    fields:
    - employee.certified
    - employee.unique_employee
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: P
      employee.certified: Y
    sorts:
    - employee.certified
    limit: 500
    query_timezone: America/New_York
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
    single_value_title: Total Certified
    row: 0
    col: 16
    width: 8
    height: 3
  - name: Total Employees - District
    title: Total Employees - District
    model: ccpsews
    explore: employee
    type: single_value
    fields:
    - employee.unique_employee
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: P
    sorts:
    - employee.unique_employee desc
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    single_value_title: Total Employees
    value_format: ''
    row: 0
    col: 0
    width: 8
    height: 3
  - name: Active Positions by District
    title: Active Positions by District
    model: ccpsews
    explore: position
    type: single_value
    fields:
    - position.unique_position
    - position.status
    filters:
      position.status: A
    sorts:
    - position.unique_position desc
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
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
    single_value_title: Primary and Secondary Active Positions
    row: 3
    col: 8
    width: 8
    height: 6
  - name: Total Employees by County Years Experience - District
    title: Total Employees by County Years Experience - District
    model: ccpsews
    explore: employee
    type: looker_column
    fields:
    - employee.county_years_exp
    - employee.unique_employee
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: P
    sorts:
    - employee.county_years_exp
    limit: 500
    query_timezone: America/New_York
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
    show_null_labels: true
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
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
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
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    value_labels: legend
    label_type: labPer
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    hide_legend: true
    x_axis_label: Years of Experience
    y_axes:
    - label: No. Of Employees
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: '0'
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: employee.unique_employee
        name: Employee Unique Employee
        axisId: employee.unique_employee
    colors:
    - "#62bad4"
    - "#a9c574"
    - "#929292"
    - "#9fdee0"
    - "#1f3e5a"
    - "#90c8ae"
    - "#704363"
    - "#c5c6a6"
    - "#82c2ca"
    - "#cee0a0"
    - "#23330b"
    - "#74876b"
    - "#80c763"
    - "#80c763"
    series_colors:
      employee.unique_employee: "#8f5cc4"
    row: 15
    col: 0
    width: 24
    height: 7
  - title: Total Employees By Degrees
    name: Total Employees By Degrees
    model: ccpsews
    explore: employee
    type: looker_pie
    fields:
    - employee_class.pay_cert_lvl
    - employee.unique_employee
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: "-T"
      employee_class.pay_cert_lvl: Bachelor,Master,Doctorate,Specialist
    sorts:
    - employee.unique_employee desc
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
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
    colors:
    - 'palette: Santa Cruz'
    series_colors: {}
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Total Employees By Gender
    name: Total Employees By Gender
    model: ccpsews
    explore: employee
    type: looker_pie
    fields:
    - employee.gender
    - employee.unique_employee
    filters:
      employee_class.status: A,N,P
      employee_class.primary_class: P
    sorts:
    - employee.unique_employee desc
    limit: 500
    query_timezone: America/New_York
    value_labels: labels
    label_type: labPer
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
    colors:
    - 'palette: Santa Cruz'
    series_colors:
      Female: "#ed4560"
      Male: "#04108d"
    row: 3
    col: 16
    width: 8
    height: 6
  - name: Total Employees By Race
    title: Total Employees By Race
    model: ccpsews
    explore: worker
    type: looker_pie
    fields:
    - worker.count
    - worker.ethnicity
    filters:
      worker.termination_date: 0000-00-00
    sorts:
    - worker.count desc
    limit: 500
    query_timezone: America/New_York
    value_labels: labels
    label_type: labPer
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    series_labels: {}
    colors:
    - 'palette: Mixed Neutrals'
    series_colors: {}
    row: 9
    col: 8
    width: 8
    height: 6
