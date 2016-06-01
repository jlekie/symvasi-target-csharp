{{#isTypeString type}}protocol.WriteStringValue({{source}});
{{/isTypeString}}
{{#isTypeBoolean type}}protocol.WriteBoolValue({{source}});
{{/isTypeBoolean}}
{{#isTypeInteger type}}protocol.WriteIntegerValue({{source}});
{{/isTypeInteger}}
{{#isTypeFloat type}}protocol.WriteFloatValue({{source}});
{{/isTypeFloat}}
{{#isTypeDouble type}}protocol.WriteDoubleValue({{source}});
{{/isTypeDouble}}
{{#isTypeEnum type}}protocol.WriteEnumValue({{source}});
{{/isTypeEnum}}
{{#isTypeList type}}if ({{source}} != null)
{
    protocol.WriteListStart({{source}}.Count);
    foreach (var item in {{source}})
    {
        {{> writeListItem dataType=(getListType type)}}
    }
    protocol.WriteListEnd();
}
{{/isTypeList}}
{{#isTypeModel type}}if ({{source}} != null)
{
    protocol.WriteModelStart("{{type}}", {{source}}.GetProperties().Length);
    {{source}}.Write(protocol);
    protocol.WriteModelEnd();
}
{{/isTypeModel}}