{{~#isTypeString type}}{{source}} = null;
{{/isTypeString}}
{{~#isTypeBoolean type}}{{source}} = default({{> typeReference dataType=type}});
{{/isTypeBoolean}}
{{~#isTypeInteger type}}{{source}} = default({{> typeReference dataType=type}});
{{/isTypeInteger}}
{{~#isTypeFloat type}}{{source}} = default({{> typeReference dataType=type}});
{{/isTypeFloat}}
{{~#isTypeDouble type}}{{source}} = default({{> typeReference dataType=type}});
{{/isTypeDouble}}
{{~#isTypeEnum type}}{{source}} = default({{> typeReference dataType=type}});
{{/isTypeEnum}}
{{~#isTypeList type}}{{source}} = null;
{{/isTypeList}}
{{~#isTypeModel type}}{{source}} = null;
{{/isTypeModel}}