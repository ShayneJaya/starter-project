
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."DOCUMENT_RANKING_V" ("FILE_NAME", "PROMPT_ID", "CONV_ID", "PROMPT", "RESPONSE", "DOCUMENTID", "INDEX_ID", "SCORE", "CONTENT") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select l.file_name
    , p.id prompt_id
    , p.conv_id
    , p.prompt
    , p.response
    , jt.documentid
    , jt.index_id
    , jt.score
    , jt.content
from prompts p
    , json_table(p.output, '$.chatResponse.documents[*]' columns
        nested path '$[*]' columns (
            documentid varchar2(1000) path '$.id',
            index_id number path '$.index',
            score number path '$.score',
            content varchar2(1000) path '$.content'
                )
        ) jt
    , prompt_docs d
    , documents l
where p.conv_id = d.conv_id
and p.id = d.prompt_id
and jt.index_id = d.index_id
and d.document_id = l.id;

