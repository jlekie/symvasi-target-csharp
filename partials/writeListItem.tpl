{{#isTypeString dataType}}protocol.WriteStringValue(item);
{{/isTypeString}}
{{#isTypeBoolean dataType}}protocol.WriteBoolValue(item);
{{/isTypeBoolean}}
{{#isTypeInteger dataType}}protocol.WriteIntegerValue(item);
{{/isTypeInteger}}
{{#isTypeFloat dataType}}protocol.WriteFloatValue(item);
{{/isTypeFloat}}
{{#isTypeDouble dataType}}protocol.WriteDoubleValue(item);
{{/isTypeDouble}}
{{#isTypeEnum dataType}}protocol.WriteEnumValue(item);
{{/isTypeEnum}}
{{#isTypeModel dataType}}protocol.WriteModelStart("{{dataType}}", item.GetProperties().Length);
item.Write(protocol);
protocol.WriteModelEnd();
{{/isTypeModel}}