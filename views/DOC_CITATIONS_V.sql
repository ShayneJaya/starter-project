
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."DOC_CITATIONS_V" ("FILE_NAME", "PROMPT_ID", "CONV_ID", "ASKED_ON", "PROMPT", "RESPONSE", "CITATION_STARTPOINT", "CITATION_ENDPOINT", "CITATION_TEXT", "DOCUMENTIDS") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select  d.file_name
    , p.id prompt_id
    , p.conv_id
    , p.asked_on
    , p.prompt
    , p.response
    , jt.citation_startpoint
    , jt.citation_endpoint
    , jt.citation_text
    , jt.documentids
from prompts p, document_ranking_v d
    , json_table(p.output, '$.chatResponse.citations[*]' columns
        nested path '$[*]' columns (
            citation_startpoint number path '$.start',
            citation_endpoint number path '$.end',
            citation_text varchar2(100) path '$.text',
            nested path '$.documentIds[*]' columns (
                documentIds varchar2(100) path '$')
                )
        ) jt
where p.conv_id = d.conv_id
and p.id = d.prompt_id
and jt.documentids = d.documentid;

