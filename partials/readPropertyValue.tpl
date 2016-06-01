{{#isTypeString type}}{{source}} = protocol.ReadStringValue();
{{/isTypeString}}
{{#isTypeBoolean type}}{{source}} = protocol.ReadBoolValue();
{{/isTypeBoolean}}
{{#isTypeInteger type}}{{source}} = protocol.ReadIntegerValue();
{{/isTypeInteger}}
{{#isTypeFloat type}}{{source}} = protocol.ReadFloatValue();
{{/isTypeFloat}}
{{#isTypeDouble type}}{{source}} = protocol.ReadDoubleValue();
{{/isTypeDouble}}
{{#isTypeEnum type}}{{source}} = protocol.ReadEnumValue<{{> typeReference dataType=type}}>();
{{/isTypeEnum}}
{{#isTypeList type}}var list = protocol.ReadListStart();

{{source}} = new {{> typeReference dataType=type}}();
for (var a = 0; a < list.ItemCount; a++)
{
    {{> readListItem source=source dataType=(getListType type)}}
}

protocol.ReadListEnd();
{{/isTypeList}}
{{#isTypeModel type}}var model = protocol.ReadModelStart();

{{source}} = new {{> typeReference dataType=type}}();
{{source}}.Read(protocol, model);

protocol.ReadModelEnd();
{{/isTypeModel}}