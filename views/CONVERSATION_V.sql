
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV_USER"."CONVERSATION_V" ("CONVERSATION_ID", "USERNAME", "STARTED_ON", "APP_SESSION", "PROMPT_ID", "PROMPT", "RESPONSE", "ASKED_ON", "CHATHISTORY", "REFERENCES", "REQUEST", "OUTPUT", "CITATIONS", "DOCUMENTS", "DOCUMENTS4RERANK", "DOCUMENTSRERANKED", "SHOWSQL", "AI_SERVICE", "DOMAIN") DEFAULT COLLATION "USING_NLS_COMP"  AS
  select
    c.id conversation_id
    , c.username
    , c.started_on
    , c.app_session
    , p.id prompt_id
    , p.prompt
    , p.response
    , p.asked_on
    , p.chathistory
    , p.references
    , p.request
    , p.output
    , p.citations
    , p.documents
    , p.documents4rerank
    , p.documentsreranked
    , p.showsql
    , p.ai_service
    , p.domain
from conversations c, prompts p
where p.conv_id = c.id;

