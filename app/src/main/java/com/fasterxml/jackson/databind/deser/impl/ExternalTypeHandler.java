package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ExternalTypeHandler {
    private final JavaType _beanType;
    private final Map<String, Object> _nameToPropertyIndex;
    private final ExtTypedProperty[] _properties;
    private final TokenBuffer[] _tokens;
    private final String[] _typeIds;

    public static class Builder {
        private final JavaType _beanType;
        private final List<ExtTypedProperty> _properties = new ArrayList();
        private final Map<String, Object> _nameToPropertyIndex = new HashMap();

        public Builder(JavaType javaType) {
            this._beanType = javaType;
        }

        private void _addPropertyIndex(String str, Integer num) {
            Object obj = this._nameToPropertyIndex.get(str);
            if (obj == null) {
                this._nameToPropertyIndex.put(str, num);
                return;
            }
            if (obj instanceof List) {
                ((List) obj).add(num);
                return;
            }
            LinkedList linkedList = new LinkedList();
            linkedList.add(obj);
            linkedList.add(num);
            this._nameToPropertyIndex.put(str, linkedList);
        }

        public void addExternal(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            Integer valueOf = Integer.valueOf(this._properties.size());
            this._properties.add(new ExtTypedProperty(settableBeanProperty, typeDeserializer));
            _addPropertyIndex(settableBeanProperty.getName(), valueOf);
            _addPropertyIndex(typeDeserializer.getPropertyName(), valueOf);
        }

        public ExternalTypeHandler build(BeanPropertyMap beanPropertyMap) {
            int size = this._properties.size();
            ExtTypedProperty[] extTypedPropertyArr = new ExtTypedProperty[size];
            for (int i2 = 0; i2 < size; i2++) {
                ExtTypedProperty extTypedProperty = this._properties.get(i2);
                SettableBeanProperty find = beanPropertyMap.find(extTypedProperty.getTypePropertyName());
                if (find != null) {
                    extTypedProperty.linkTypeProperty(find);
                }
                extTypedPropertyArr[i2] = extTypedProperty;
            }
            return new ExternalTypeHandler(this._beanType, extTypedPropertyArr, this._nameToPropertyIndex, null, null);
        }
    }

    public static final class ExtTypedProperty {
        private final SettableBeanProperty _property;
        private final TypeDeserializer _typeDeserializer;
        private SettableBeanProperty _typeProperty;
        private final String _typePropertyName;

        public ExtTypedProperty(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            this._property = settableBeanProperty;
            this._typeDeserializer = typeDeserializer;
            this._typePropertyName = typeDeserializer.getPropertyName();
        }

        public String getDefaultTypeId() {
            Class<?> defaultImpl = this._typeDeserializer.getDefaultImpl();
            if (defaultImpl == null) {
                return null;
            }
            return this._typeDeserializer.getTypeIdResolver().idFromValueAndType(null, defaultImpl);
        }

        public SettableBeanProperty getProperty() {
            return this._property;
        }

        public SettableBeanProperty getTypeProperty() {
            return this._typeProperty;
        }

        public String getTypePropertyName() {
            return this._typePropertyName;
        }

        public boolean hasDefaultType() {
            return this._typeDeserializer.getDefaultImpl() != null;
        }

        public boolean hasTypePropertyName(String str) {
            return str.equals(this._typePropertyName);
        }

        public void linkTypeProperty(SettableBeanProperty settableBeanProperty) {
            this._typeProperty = settableBeanProperty;
        }
    }

    public ExternalTypeHandler(JavaType javaType, ExtTypedProperty[] extTypedPropertyArr, Map<String, Object> map, String[] strArr, TokenBuffer[] tokenBufferArr) {
        this._beanType = javaType;
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = map;
        this._typeIds = strArr;
        this._tokens = tokenBufferArr;
    }

    private final boolean _handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj, String str2, int i2) throws IOException {
        if (!this._properties[i2].hasTypePropertyName(str)) {
            return false;
        }
        if (obj == null || this._tokens[i2] == null) {
            this._typeIds[i2] = str2;
            return true;
        }
        _deserializeAndSet(jsonParser, deserializationContext, obj, i2, str2);
        this._tokens[i2] = null;
        return true;
    }

    public static Builder builder(JavaType javaType) {
        return new Builder(javaType);
    }

    public final Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, int i2, String str) throws IOException {
        JsonParser asParser = this._tokens[i2].asParser(jsonParser);
        if (asParser.nextToken() == JsonToken.VALUE_NULL) {
            return null;
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        tokenBuffer.copyCurrentStructure(asParser);
        tokenBuffer.writeEndArray();
        JsonParser asParser2 = tokenBuffer.asParser(jsonParser);
        asParser2.nextToken();
        return this._properties[i2].getProperty().deserialize(asParser2, deserializationContext);
    }

    public final void _deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, int i2, String str) throws IOException {
        JsonParser asParser = this._tokens[i2].asParser(jsonParser);
        if (asParser.nextToken() == JsonToken.VALUE_NULL) {
            this._properties[i2].getProperty().set(obj, null);
            return;
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        tokenBuffer.copyCurrentStructure(asParser);
        tokenBuffer.writeEndArray();
        JsonParser asParser2 = tokenBuffer.asParser(jsonParser);
        asParser2.nextToken();
        this._properties[i2].getProperty().deserializeAndSet(asParser2, deserializationContext, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
    
        return r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object complete(com.fasterxml.jackson.core.JsonParser r10, com.fasterxml.jackson.databind.DeserializationContext r11, java.lang.Object r12) throws java.io.IOException {
        /*
            r9 = this;
            r0 = 1
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r1 = r9._properties
            int r1 = r1.length
            r2 = 0
            r7 = r2
        L6:
            if (r7 >= r1) goto L8f
            java.lang.String[] r3 = r9._typeIds
            r3 = r3[r7]
            if (r3 != 0) goto L72
            com.fasterxml.jackson.databind.util.TokenBuffer[] r4 = r9._tokens
            r4 = r4[r7]
            if (r4 != 0) goto L19
        L14:
            r4 = r10
            r5 = r11
            r6 = r12
            goto Lb5
        L19:
            com.fasterxml.jackson.core.JsonToken r5 = r4.firstToken()
            boolean r5 = r5.isScalarValue()
            if (r5 == 0) goto L6c
            com.fasterxml.jackson.core.JsonParser r4 = r4.asParser(r10)
            r4.nextToken()
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r5 = r9._properties
            r5 = r5[r7]
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r5 = r5.getProperty()
            com.fasterxml.jackson.databind.JavaType r6 = r5.getType()
            java.lang.Object r4 = com.fasterxml.jackson.databind.jsontype.TypeDeserializer.deserializeIfNatural(r4, r11, r6)
            if (r4 == 0) goto L40
            r5.set(r12, r4)
            goto L14
        L40:
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r4 = r9._properties
            r4 = r4[r7]
            boolean r4 = r4.hasDefaultType()
            if (r4 != 0) goto L64
            java.lang.Class r4 = r12.getClass()
            java.lang.String r5 = r5.getName()
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r6 = r9._properties
            r6 = r6[r7]
            java.lang.String r6 = r6.getTypePropertyName()
            java.lang.Object[] r8 = new java.lang.Object[r0]
            r8[r2] = r6
            java.lang.String r6 = "Missing external type id property '%s'"
            r11.reportPropertyInputMismatch(r4, r5, r6, r8)
            goto L6c
        L64:
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r3 = r9._properties
            r3 = r3[r7]
            java.lang.String r3 = r3.getDefaultTypeId()
        L6c:
            r4 = r10
            r5 = r11
            r6 = r12
            r8 = r3
            r3 = r9
            goto Lb2
        L72:
            com.fasterxml.jackson.databind.util.TokenBuffer[] r4 = r9._tokens
            r4 = r4[r7]
            if (r4 != 0) goto L6c
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r10 = r9._properties
            r10 = r10[r7]
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r10 = r10.getProperty()
            boolean r1 = r10.isRequired()
            if (r1 != 0) goto L91
            com.fasterxml.jackson.databind.DeserializationFeature r1 = com.fasterxml.jackson.databind.DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY
            boolean r1 = r11.isEnabled(r1)
            if (r1 == 0) goto L8f
            goto L91
        L8f:
            r6 = r12
            goto Lbb
        L91:
            java.lang.Class r1 = r12.getClass()
            java.lang.String r3 = r10.getName()
            java.lang.String r10 = r10.getName()
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r4 = r9._properties
            r4 = r4[r7]
            java.lang.String r4 = r4.getTypePropertyName()
            r5 = 2
            java.lang.Object[] r5 = new java.lang.Object[r5]
            r5[r2] = r10
            r5[r0] = r4
            java.lang.String r10 = "Missing property '%s' for external type id '%s'"
            r11.reportPropertyInputMismatch(r1, r3, r10, r5)
            return r12
        Lb2:
            r3._deserializeAndSet(r4, r5, r6, r7, r8)
        Lb5:
            int r7 = r7 + r0
            r10 = r4
            r11 = r5
            r12 = r6
            goto L6
        Lbb:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.complete(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
    
        if (r9._tokens[r7] != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ab, code lost:
    
        r12 = r9._typeIds;
        r8 = r12[r7];
        r12[r7] = null;
        _deserializeAndSet(r10, r11, r13, r7, r8);
        r9._tokens[r7] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a9, code lost:
    
        if (r9._typeIds[r7] != null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handlePropertyValue(com.fasterxml.jackson.core.JsonParser r10, com.fasterxml.jackson.databind.DeserializationContext r11, java.lang.String r12, java.lang.Object r13) throws java.io.IOException {
        /*
            r9 = this;
            java.util.Map<java.lang.String, java.lang.Object> r0 = r9._nameToPropertyIndex
            java.lang.Object r0 = r0.get(r12)
            if (r0 != 0) goto La
            r10 = 0
            return r10
        La:
            boolean r1 = r0 instanceof java.util.List
            r2 = 1
            if (r1 == 0) goto L73
            java.util.List r0 = (java.util.List) r0
            java.util.Iterator r13 = r0.iterator()
            java.lang.Object r0 = r13.next()
            java.lang.Integer r0 = (java.lang.Integer) r0
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r1 = r9._properties
            int r3 = r0.intValue()
            r1 = r1[r3]
            boolean r12 = r1.hasTypePropertyName(r12)
            if (r12 == 0) goto L4d
            java.lang.String r11 = r10.getText()
            r10.skipChildren()
            java.lang.String[] r10 = r9._typeIds
            int r12 = r0.intValue()
            r10[r12] = r11
        L38:
            boolean r10 = r13.hasNext()
            if (r10 == 0) goto L72
            java.lang.String[] r10 = r9._typeIds
            java.lang.Object r12 = r13.next()
            java.lang.Integer r12 = (java.lang.Integer) r12
            int r12 = r12.intValue()
            r10[r12] = r11
            goto L38
        L4d:
            com.fasterxml.jackson.databind.util.TokenBuffer r12 = new com.fasterxml.jackson.databind.util.TokenBuffer
            r12.<init>(r10, r11)
            r12.copyCurrentStructure(r10)
            com.fasterxml.jackson.databind.util.TokenBuffer[] r10 = r9._tokens
            int r11 = r0.intValue()
            r10[r11] = r12
        L5d:
            boolean r10 = r13.hasNext()
            if (r10 == 0) goto L72
            com.fasterxml.jackson.databind.util.TokenBuffer[] r10 = r9._tokens
            java.lang.Object r11 = r13.next()
            java.lang.Integer r11 = (java.lang.Integer) r11
            int r11 = r11.intValue()
            r10[r11] = r12
            goto L5d
        L72:
            return r2
        L73:
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r7 = r0.intValue()
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r0 = r9._properties
            r0 = r0[r7]
            boolean r12 = r0.hasTypePropertyName(r12)
            if (r12 == 0) goto L97
            java.lang.String[] r12 = r9._typeIds
            java.lang.String r0 = r10.getText()
            r12[r7] = r0
            r10.skipChildren()
            if (r13 == 0) goto Lbe
            com.fasterxml.jackson.databind.util.TokenBuffer[] r12 = r9._tokens
            r12 = r12[r7]
            if (r12 == 0) goto Lbe
            goto Lab
        L97:
            com.fasterxml.jackson.databind.util.TokenBuffer r12 = new com.fasterxml.jackson.databind.util.TokenBuffer
            r12.<init>(r10, r11)
            r12.copyCurrentStructure(r10)
            com.fasterxml.jackson.databind.util.TokenBuffer[] r0 = r9._tokens
            r0[r7] = r12
            if (r13 == 0) goto Lbe
            java.lang.String[] r12 = r9._typeIds
            r12 = r12[r7]
            if (r12 == 0) goto Lbe
        Lab:
            java.lang.String[] r12 = r9._typeIds
            r8 = r12[r7]
            r0 = 0
            r12[r7] = r0
            r3 = r9
            r4 = r10
            r5 = r11
            r6 = r13
            r3._deserializeAndSet(r4, r5, r6, r7, r8)
            com.fasterxml.jackson.databind.util.TokenBuffer[] r10 = r3._tokens
            r10[r7] = r0
            goto Lbf
        Lbe:
            r3 = r9
        Lbf:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.handlePropertyValue(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, java.lang.String, java.lang.Object):boolean");
    }

    public boolean handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Object obj2 = this._nameToPropertyIndex.get(str);
        boolean z6 = false;
        if (obj2 == null) {
            return false;
        }
        String text = jsonParser.getText();
        if (!(obj2 instanceof List)) {
            return _handleTypePropertyValue(jsonParser, deserializationContext, str, obj, text, ((Integer) obj2).intValue());
        }
        Iterator it = ((List) obj2).iterator();
        while (it.hasNext()) {
            JsonParser jsonParser2 = jsonParser;
            DeserializationContext deserializationContext2 = deserializationContext;
            String str2 = str;
            Object obj3 = obj;
            if (_handleTypePropertyValue(jsonParser2, deserializationContext2, str2, obj3, text, ((Integer) it.next()).intValue())) {
                z6 = true;
            }
            jsonParser = jsonParser2;
            deserializationContext = deserializationContext2;
            str = str2;
            obj = obj3;
        }
        return z6;
    }

    public ExternalTypeHandler start() {
        return new ExternalTypeHandler(this);
    }

    public ExternalTypeHandler(ExternalTypeHandler externalTypeHandler) {
        this._beanType = externalTypeHandler._beanType;
        ExtTypedProperty[] extTypedPropertyArr = externalTypeHandler._properties;
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = externalTypeHandler._nameToPropertyIndex;
        int length = extTypedPropertyArr.length;
        this._typeIds = new String[length];
        this._tokens = new TokenBuffer[length];
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x005d, code lost:
    
        if (r18.isEnabled(com.fasterxml.jackson.databind.DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object complete(com.fasterxml.jackson.core.JsonParser r17, com.fasterxml.jackson.databind.DeserializationContext r18, com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer r19, com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator r20) throws java.io.IOException {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r19
            r4 = 1
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r5 = r0._properties
            int r5 = r5.length
            java.lang.Object[] r6 = new java.lang.Object[r5]
            r7 = 0
            r8 = r7
        L10:
            if (r8 >= r5) goto Lce
            java.lang.String[] r9 = r0._typeIds
            r9 = r9[r8]
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r10 = r0._properties
            r10 = r10[r8]
            if (r9 != 0) goto L47
            com.fasterxml.jackson.databind.util.TokenBuffer[] r11 = r0._tokens
            r11 = r11[r8]
            if (r11 != 0) goto L24
            goto Lcb
        L24:
            boolean r11 = r10.hasDefaultType()
            if (r11 != 0) goto L42
            com.fasterxml.jackson.databind.JavaType r11 = r0._beanType
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r12 = r10.getProperty()
            java.lang.String r12 = r12.getName()
            java.lang.String r13 = r10.getTypePropertyName()
            java.lang.Object[] r14 = new java.lang.Object[r4]
            r14[r7] = r13
            java.lang.String r13 = "Missing external type id property '%s'"
            r2.reportPropertyInputMismatch(r11, r12, r13, r14)
            goto L7d
        L42:
            java.lang.String r9 = r10.getDefaultTypeId()
            goto L7d
        L47:
            com.fasterxml.jackson.databind.util.TokenBuffer[] r11 = r0._tokens
            r11 = r11[r8]
            if (r11 != 0) goto L7d
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r11 = r10.getProperty()
            boolean r12 = r11.isRequired()
            if (r12 != 0) goto L5f
            com.fasterxml.jackson.databind.DeserializationFeature r12 = com.fasterxml.jackson.databind.DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY
            boolean r12 = r2.isEnabled(r12)
            if (r12 == 0) goto L7d
        L5f:
            com.fasterxml.jackson.databind.JavaType r12 = r0._beanType
            java.lang.String r13 = r11.getName()
            java.lang.String r11 = r11.getName()
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r14 = r0._properties
            r14 = r14[r8]
            java.lang.String r14 = r14.getTypePropertyName()
            r15 = 2
            java.lang.Object[] r15 = new java.lang.Object[r15]
            r15[r7] = r11
            r15[r4] = r14
            java.lang.String r11 = "Missing property '%s' for external type id '%s'"
            r2.reportPropertyInputMismatch(r12, r13, r11, r15)
        L7d:
            com.fasterxml.jackson.databind.util.TokenBuffer[] r11 = r0._tokens
            r11 = r11[r8]
            if (r11 == 0) goto L89
            java.lang.Object r11 = r0._deserialize(r1, r2, r8, r9)
            r6[r8] = r11
        L89:
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r11 = r10.getProperty()
            int r12 = r11.getCreatorIndex()
            if (r12 < 0) goto Lcb
            r12 = r6[r8]
            r3.assignParameter(r11, r12)
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r10 = r10.getTypeProperty()
            if (r10 == 0) goto Lcb
            int r11 = r10.getCreatorIndex()
            if (r11 < 0) goto Lcb
            com.fasterxml.jackson.databind.JavaType r11 = r10.getType()
            java.lang.Class<java.lang.String> r12 = java.lang.String.class
            boolean r11 = r11.hasRawClass(r12)
            if (r11 == 0) goto Lb1
            goto Lc8
        Lb1:
            com.fasterxml.jackson.databind.util.TokenBuffer r11 = new com.fasterxml.jackson.databind.util.TokenBuffer
            r11.<init>(r1, r2)
            r11.writeString(r9)
            com.fasterxml.jackson.databind.JsonDeserializer r9 = r10.getValueDeserializer()
            com.fasterxml.jackson.core.JsonParser r12 = r11.asParserOnFirstToken()
            java.lang.Object r9 = r9.deserialize(r12, r2)
            r11.close()
        Lc8:
            r3.assignParameter(r10, r9)
        Lcb:
            int r8 = r8 + r4
            goto L10
        Lce:
            r8 = r20
            java.lang.Object r1 = r8.build(r2, r3)
        Ld4:
            if (r7 >= r5) goto Leb
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r2 = r0._properties
            r2 = r2[r7]
            com.fasterxml.jackson.databind.deser.SettableBeanProperty r2 = r2.getProperty()
            int r3 = r2.getCreatorIndex()
            if (r3 >= 0) goto Le9
            r3 = r6[r7]
            r2.set(r1, r3)
        Le9:
            int r7 = r7 + r4
            goto Ld4
        Leb:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.complete(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer, com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator):java.lang.Object");
    }
}
