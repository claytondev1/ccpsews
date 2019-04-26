explore: htmlf_formatting_stuff {hidden:yes}
view: htmlf_formatting_stuff {
  sql_table_name: dbo.school ;;
  measure: html {
    sql: 1 ;;
    html: <div>
            {% if _user_attributes['role'] == 'board' %}
                Welcome! Start here: <br />
                <a href="https://dashboard.clayton.k12.ga.us:9999/dashboards/24"><font color='0067A6'>Board Overview Dashboard</font></a> <br />
            {% elsif _user_attributes['role'] == 'splost' %}
              Check out this dashboard to see current and in-design projects: <br />
              <a href="https://dashboard.clayton.k12.ga.us:9999/dashboards/25"><font color='0067A6'>SPLOST Overview Dashboard</font></a> <br />
              Check out this dashboard to get a pulse of the business! <br />
                <a href="https://dashboard.clayton.k12.ga.us:9999/dashboards/24"><font color='0067A6'>Board Overview Dashboard</font></a>
            {% else  %}
              Go to Browse to get started!
            {% endif %}
          </div>;;
  }

  measure: image {
    sql: 2 ;;
    html: <img src="https://i.imgur.com/Z3NxqRl.png" height="5%"/> ;;
  }

}
