package com.twitter.serial.serializer;

import java.io.IOException;
import t4.AbstractC1655a;
import t4.AbstractC1656b;
import u4.AbstractC1701b;

/* loaded from: classes2.dex */
public abstract class a extends c {
    public static final short DEFAULT_VERSION = 0;
    public static final byte NOT_NULL_OBJECT = 1;
    public static final byte NULL_OBJECT = 0;
    protected final int mVersionNumber = 0;

    @Override // com.twitter.serial.serializer.c
    public Object deserialize(b bVar, AbstractC1655a abstractC1655a) throws IOException, ClassNotFoundException {
        if (AbstractC1701b.readNullIndicator(abstractC1655a)) {
            return null;
        }
        throw null;
    }

    public final void serialize(b bVar, AbstractC1656b abstractC1656b, Object obj) throws IOException {
        if (AbstractC1701b.writeNullIndicator(abstractC1656b, obj)) {
            return;
        }
        if (!bVar.a()) {
            throw null;
        }
        throw null;
    }
}
