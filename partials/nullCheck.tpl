{{~#isTypeString type}}{{source}} == null{{/isTypeString}}
{{~#isTypeBoolean type}}false{{/isTypeBoolean}}
{{~#isTypeInteger type}}false{{/isTypeInteger}}
{{~#isTypeFloat type}}false{{/isTypeFloat}}
{{~#isTypeDouble type}}false{{/isTypeDouble}}
{{~#isTypeEnum type}}false{{/isTypeEnum}}
{{~#isTypeList type}}{{source}} == null{{/isTypeList}}
{{~#isTypeModel type}}{{source}} == null{{/isTypeModel}}