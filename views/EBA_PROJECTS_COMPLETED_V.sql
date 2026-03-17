
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."EBA_PROJECTS_COMPLETED_V" ("ID", "NAME", "PROJECT_LEAD", "COMPLETED_DATE", "BUDGET", "COST", "TASKS_ON_TIME", "TASKS_LATE", "TASKS_INCOMPLETE", "MILESTONES_ON_TIME", "MILESTONES_LATE", "MILESTONES_INCOMPLETE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select p.id
,      p.name
,      p.project_lead
,      p.completed_date
,      p.budget
,      (select sum(t.cost)
        from eba_project_tasks t
        where t.project_id = p.id
       ) cost
,      (  (select count(*)
           from eba_project_milestones m
           ,    eba_project_tasks t
           where t.project_id = p.id
           and   t.milestone_id = m.id
           and   nvl(t.is_complete_yn,'N') = 'Y'
           and   t.end_date <= m.due_date
          )
        + (select count(*)
           from eba_project_tasks t
           where t.project_id = p.id
           and   t.milestone_id is null
           and   nvl(t.is_complete_yn,'N') = 'Y'
          )
       ) tasks_on_time
,      (select count(*)
        from eba_project_milestones m
        ,    eba_project_tasks t
        where t.project_id = p.id
        and   t.milestone_id = m.id
        and   nvl(t.is_complete_yn,'N') = 'Y'
        and   t.end_date > m.due_date
       ) tasks_late
,      (select count(*)
        from eba_project_tasks t
        where t.project_id = p.id
        and   nvl(t.is_complete_yn,'N') = 'N'
       ) tasks_incomplete
,      (select count(*)
        from eba_project_milestones m
        where m.project_id = p.id
        and   not exists (select t.id
                          from eba_project_tasks t
                          where t.milestone_id = m.id
                          and   nvl(t.is_complete_yn,'N') = 'Y'
                          and   t.end_date > m.due_date
                         )
       ) milestones_on_time
,      (select count(*)
        from eba_project_milestones m
        where m.project_id = p.id
        and   exists (select t.id
                      from eba_project_tasks t
                      where t.milestone_id = m.id
                      and   nvl(t.is_complete_yn,'N') = 'Y'
                      and   t.end_date > m.due_date
                     )
       ) milestones_late
,      (select count(*)
        from eba_project_milestones m
        where m.project_id = p.id
        and   exists (select t.id
                      from eba_project_tasks t
                      where t.milestone_id = m.id
                      and   nvl(t.is_complete_yn,'N') = 'N'
                     )
       ) milestones_incomplete
from eba_projects p
where p.status_id = 3;

