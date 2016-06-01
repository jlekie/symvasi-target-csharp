{{~#isTypeString dataType}}string{{/isTypeString}}
{{~#isTypeBoolean dataType}}bool{{/isTypeBoolean}}
{{~#isTypeInteger dataType}}int{{/isTypeInteger}}
{{~#isTypeFloat dataType}}float{{/isTypeFloat}}
{{~#isTypeDouble dataType}}double{{/isTypeDouble}}
{{~#isTypeEnum dataType}}{{upperCaseFirst dataType}}{{/isTypeEnum}}
{{~#isTypeModel dataType}}{{upperCaseFirst dataType}}{{/isTypeModel}}
{{~#isTypeList dataType}}List<{{> typeReference dataType=(getListType dataType)}}>{{/isTypeList}}