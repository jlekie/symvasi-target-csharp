{{#isTypeString dataType}}{{source}}.Add(protocol.ReadStringValue());
{{/isTypeString}}
{{#isTypeBoolean dataType}}{{source}}.Add(protocol.ReadBoolValue(item));
{{/isTypeBoolean}}
{{#isTypeInteger dataType}}{{source}}.Add(protocol.ReadIntegerValue(item));
{{/isTypeInteger}}
{{#isTypeFloat dataType}}{{source}}.Add(protocol.ReadFloatValue(item));
{{/isTypeFloat}}
{{#isTypeDouble dataType}}{{source}}.Add(protocol.ReadDoubleValue(item));
{{/isTypeDouble}}
{{#isTypeEnum dataType}}{{source}}.Add(protocol.ReadEnumValue<{{> typeReference dataType=dataType}}>(item));
{{/isTypeEnum}}
{{#isTypeModel dataType}}var model = protocol.ReadModelStart();

var item = new {{> typeReference dataType=dataType}}();
item.Read(protocol, model);
{{source}}.Add(item);

protocol.ReadModelEnd();
{{/isTypeModel}}