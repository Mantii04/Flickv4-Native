package com.fasterxml.jackson.databind.ext;

import b4.AbstractC0658h;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;

/* loaded from: classes.dex */
public class Java7HandlersImpl extends Java7Handlers {
    private final Class<?> _pathClass = AbstractC0658h.i();

    @Override // com.fasterxml.jackson.databind.ext.Java7Handlers
    public Class<?> getClassJavaNioFilePath() {
        return this._pathClass;
    }

    @Override // com.fasterxml.jackson.databind.ext.Java7Handlers
    public JsonDeserializer<?> getDeserializerForJavaNioFilePath(Class<?> cls) {
        if (cls == this._pathClass) {
            return new NioPathDeserializer();
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.ext.Java7Handlers
    public JsonSerializer<?> getSerializerForJavaNioFilePath(Class<?> cls) {
        if (this._pathClass.isAssignableFrom(cls)) {
            return new NioPathSerializer();
        }
        return null;
    }
}
