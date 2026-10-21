package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.databind.util.RawValue;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public interface JsonNodeCreator {
    ArrayNode arrayNode();

    ArrayNode arrayNode(int i2);

    ValueNode binaryNode(byte[] bArr);

    ValueNode binaryNode(byte[] bArr, int i2, int i7);

    ValueNode booleanNode(boolean z6);

    ValueNode nullNode();

    ValueNode numberNode(byte b7);

    ValueNode numberNode(double d7);

    ValueNode numberNode(float f3);

    ValueNode numberNode(int i2);

    ValueNode numberNode(long j7);

    ValueNode numberNode(Byte b7);

    ValueNode numberNode(Double d7);

    ValueNode numberNode(Float f3);

    ValueNode numberNode(Integer num);

    ValueNode numberNode(Long l7);

    ValueNode numberNode(Short sh);

    ValueNode numberNode(BigDecimal bigDecimal);

    ValueNode numberNode(BigInteger bigInteger);

    ValueNode numberNode(short s6);

    ObjectNode objectNode();

    ValueNode pojoNode(Object obj);

    ValueNode rawValueNode(RawValue rawValue);

    ValueNode textNode(String str);
}
