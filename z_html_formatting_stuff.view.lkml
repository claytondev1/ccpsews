explore: htmlf_formatting_stuff {

}
view: htmlf_formatting_stuff {
  sql_table_name: dbo.school ;;
  measure: html {
    sql: 1 ;;
    html: <div>
            {% if _user_attributes['role'] == 'board' %}
                Check out this dashboard to get a pulse of the business! <br />
                <a href="https://dashboard.clayton.k12.ga.us:9999/dashboards/24"><font color='0067A6'>Board Overview Dashboard</font></a>
            {% elsif _user_attributes['role'] == 'splost' %}
              Check out this dashboard to see current and in-design projects:
              <a href="https://dashboard.clayton.k12.ga.us:9999/dashboards/25"><font color='0067A6'>SPLOST Overview Dashboard</font></a>
              Check out this dashboard to get a pulse of the business! <br />
                <a href="https://dashboard.clayton.k12.ga.us:9999/dashboards/24"><font color='0067A6'>Board Overview Dashboard</font></a>
            {% else  %}
              Go go Browse to get started!
            {% endif %}
          </div>;;
  }

  dimension: image {
    html: <img src="http://www.acme.com/
      product_images/lajksdfh.jpg"/> ;;
  }

}
