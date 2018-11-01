

 view: student_dual_enrollment {
   # Or, you could make this view a derived table, like this:
   derived_table: {
    sql:select Distinct c.name As calname, s.lastname as lastname, s.firstname as firstname , co.number as coursenumber, co.name as coursename, sec.teacherDisplay as teacherdisplay
        from student s with(nolock)
        Join calendar c with(nolock) on c.calendarid=s.calendarid
        Join course co with(nolock) on co.calendarid=c.calendarid
        Join section sec with(nolock) on sec.courseid=co.courseid
        Join trial t with(nolock) on t.trialid=sec.trialid and t.calendarid=c.calendarID
        Join schoolyear sy with(nolock) on sy.endyear=s.endyear
        Join roster r with(nolock) on r.trialid=t.trialid and r.personid=s.personid and r.sectionid=sec.sectionID
        Where t.active=1
        and sy.active=1
        and co.number like '%.____4%'
        and s.enddate is null
        and s.endstatus is null
        and s.endyear = Case when ( MONTH(getdate()) >=7 and MONTH(getdate()) <= 12 )
                       then year(getdate()) + 1
                   else
                         year(getdate())
                end
        and r.enddate is null ;;

        }


    dimension: calname {
     description: "calander name"
      type: string
      sql: ${TABLE}.calname ;;
    }

    dimension: lastname
    {
      description: "student lastname"
      type: string
      sql: ${TABLE}.lastname ;;
    }

  dimension: firstname
  {
    description: "student firstname"
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: coursenumber
  {
    description: "student course number"
    type: string
    sql: ${TABLE}.coursenumber ;;
  }

 dimension: coursename
  {
    description: "student course name"
    type: string
    sql: ${TABLE}.coursename ;;
  }
}
