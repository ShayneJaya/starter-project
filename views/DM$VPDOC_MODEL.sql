
  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "DEV_USER"."DM$VPDOC_MODEL" ("NAME", "VALUE") DEFAULT COLLATION "USING_NLS_COMP"  AS
  SELECT NAME, VALUE FROM "DM$P9DOC_MODEL"/*#*/  WHERE ( NAME = 'N_Class' OR NAME = 'regressionOutput' OR NAME = 'classificationProbOutput' OR NAME = 'clusteringProbOutput' OR NAME = 'clusteringDistanceOutput' OR NAME = 'classificationLabelOutput' OR NAME = 'embeddingOutput' OR NAME = 'normalizeProb' OR NAME = 'function' OR NAME = 'normalizeEmb' OR NAME = 'suitableDistanceMetrics' OR NAME = 'normalization' OR NAME = 'maxSequenceLength' OR NAME = 'pooling' OR NAME = 'languages' OR NAME = 'tokenizer' OR NAME = 'embeddingLayer' OR NAME = 'labels' )AND sys_dm_rxform_lab("DOC_MODEL"/*#*/, null, null) is null;

